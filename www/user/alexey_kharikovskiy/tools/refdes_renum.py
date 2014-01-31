#!/usr/bin/env python2

help = """
Usage:

	refdes_renum.py [--nocopy] [--pgskip [number] ] file1.sch [file2.sch file.pcb [ pathto/projectfile ] ]
	refdes_renum.py --help
	refdes_renum.py --version

refdes_renum.py reads a gschem schematic file or files and renumbers all reference
designators.  The reference designators are numbered starting with 1 and the
old schematic file is replaced by the modified schematic file. Also replaced REFDESs in pcb file(s) accordingly to schematic file(s).
refdes_renum.py can read the project file(files) and renumber all REFDESs in project.

Warning: For properly renumber of slotted and complex(many symbols) components You must place identical REFDES to him. 
Example: U1, U1 or U101, U101, U101

refdes_renum.py accepts the following options:

    --help      Displays this help message.

    --nocopy    If given, this flag leaves the modified files in new files
                whose names are generated by appending a ".renum" to the
                original file names.  The default is to overwrite the original.

    --pgskip N  When this flag is used, components on the first schematic sheet
                are numbered starting with 101.  On the second sheet, they start
                with 201, etc  Specifying a value (N) gives the step between pages.
                For example --pgskip 10 will start with 11, 21, 31, etc.

    --gentle    This flag tells refdes_renum.py to leave any refdeses
                alone if they already have numbers.  Use this option to number
                new components in a schematic which has already been numbered.
                Note that --gentle is set by default!

    --force     Set this flag to renumber all refdeses, whether they are already
                numbered or not.

	--sort ALG	Set the sorted algorithm.
				Permissible value for --sort option (ALG) is:
		diag		- Diagonal renumber (as gschem program)
		toptobot	- Renumber refdes began with top and ends at bottom.
		bottotop	- Renumber refdes contrariwise as toptobot
		lefttoright	- Renumber refdes began with left and to right
		righttoleft - Renumber refdes contrariwise as lefttoright
		file		- Renumber refdes as text file order

	--log		Print renumber informathion to stdout

	--component Renumber refdes with component coordinates
				By default refdes_renum.py program using coordinates of "refdes" attributes

	--attr Name	Set attribute name for renumbering. At default REFDES

    --verbose   Enables verbose output.

    --version   Shows the version of this program.


Return codes:

	refdes_renum.py returns the following codes to the shell upon completion:

          0   Program ran successfully.
          1   Error opening or reading input file.
          2   Error opening or writing output file.
          3   Too many components for --pgskip setting.
          4   Internal error (program bug encountered).

Usage examples:

1.	To renumber the reference designators in a single page schematic
	mysch.sch:

		refdes_renum.py mysch.sch
		

2.	To renumber the reference designators in schematic pages pg1.sch,
	pg2.sch and pg3.sch, with the reference designators on pg1.sch
	beginning at 101, the designators on pg2.sch beginning at 201,
	and the designators on pg3.sch beginning at 301:

		refdes_renum.py --pgskip pg1.sch pg2.sch pg3.sch

	
3.	Force replaced the REFDESs in schematic and PCB files.
	No forgot gsch2pcb program for generate proper netlist :)
		
		refdes_renum.py --force foo1.sch foo2.sch foo.pcb
	

4.	Force replaced the REFDESs in current (or non current) worked project.
		
		refdes_renum.py --force project
		refdes_renum.py --force ../../design/geda/project
	

5.	Replacing with non default sorting algorithm

		refdes_renum.py --force project --sort lefttoright
	


refdes_renum.py was written by Kharkovsky Alexey <svetonomer@gmail.com>
"""

version='refdes_renum.py v1.0 by Kharkovsky Alexey :)'
sort_method = ['diag','toptobot','bottotop','lefttoright','righttoleft','file']

import sys,os
import re

if len(sys.argv) == 1:
	print help
	exit(0)

if '--help' in sys.argv:
	print help
	exit(0)

if '--version' in sys.argv:
	print version
	exit(0)

if '--nocopy'  in sys.argv:
	Suffix = '.renum'
	sys.argv.remove('--nocopy')
else:
	Suffix = ''

if '--pgskip'  in sys.argv:
	if sys.argv[sys.argv.index('--pgskip')+1] is int:
		add_page_num = sys.argv[sys.argv.index('--pgskip')+1]
	else:add_page_num = 100 #Page increment 
	sys.argv = sys.argv[:sys.argv.index('--pgskip')] + sys.argv[sys.argv.index('--pgskip')+2:]
else:
	add_page_num = 0#Page increment 

if '--gentle'  in sys.argv:
	sys.argv.remove('--gentle')
	if '--force'  in sys.argv:
		print 'Do not use \"--gentle\" and \"--force\" sumaltenuously'
		exit(0)

if '--force'  in sys.argv:
	force = True
	sys.argv.remove('--force')
else:
	force = False

if '--verbose'  in sys.argv:
	verbose = True
	sys.argv.remove('--verbose')
else:
	verbose = False

if '--sort'  in sys.argv:
	if sys.argv[sys.argv.index('--sort')+1] in sort_method:
		sort = sys.argv[sys.argv.index('--sort')+1] #sort method
	else:
		print 'Unknown argument for --sort or sort method is skipped'
		print 'The permissible value for sort method: ' , str(sort_method)
		exit(0)
	sys.argv = sys.argv[:sys.argv.index('--sort')] + sys.argv[sys.argv.index('--sort')+2:]
else:
	sort = 'toptobot'

if '--log' in sys.argv:
	log = True
	sys.argv.remove('--log')
else:
	log = False

if '--component' in sys.argv:
	attr_coord = False # for component coordinates using
	sys.argv.remove('--component') 
else:
	attr_coord = True

if '--attr'  in sys.argv:
	attr = sys.argv[sys.argv.index('--attr')+1] #attr method
	sys.argv = sys.argv[:sys.argv.index('--attr')] + sys.argv[sys.argv.index('--attr')+2:]
else:
	attr = 'refdes'

if '--attr-prefix' in sys.argv:
	attr_prefix = sys.argv[sys.argv.index('--attr-prefix')+1] #attr method
	sys.argv = sys.argv[:sys.argv.index('--attr_prefix')] + sys.argv[sys.argv.index('--attr')+2:]
else:
	attr_prefix = ''

pcbnames = []
pcbcontent = []
schem_names = []
for i in sys.argv[1:]:
	if re.search('.*\.pcb$',i,flags=re.DOTALL): #True if end of filename is .pcb
		if i not in pcbnames:
			pcbnames.append(i)
	elif re.search('.*\.sch$',i,flags=re.DOTALL): #True if end of filename is .sch
		if i not in schem_names:
			schem_names.append(i)
	else: #file is not pcb and sch => this file is project file
		file=open(i,'rt')
		content = file.read()
		file.close()
		for temp1 in re.findall('schematics\s+.*\.sch',content,flags=re.DOTALL): #This string are contaning the schematic file names
			for temp in temp1.split()[1:]:
				temp = os.path.dirname(i)+'/'+ temp # Add path to file (Useful if project file not in current directory)
				if temp not in schem_names:
					schem_names.append(temp)
		for temp1 in re.findall('output-name\s+.*\.pcb',content,flags=re.DOTALL):#This string are contaning the schematic file names
			for temp in temp1.split()[1:]:
				temp = os.path.dirname(i)+'/'+ temp + '.pcb'# Add path to file (Useful if project file not in current directory). After add .pcb (actual for project file) 
#When in project file "output-name foo.pcb", gsch2pcb create  foo.pcb.pcb, therefore this file IS main PCB.
				if temp not in pcbnames:
					pcbnames.append(temp)
# Read content of PCB file
for i in pcbnames:
	file=open(i,'rt')
	pcbcontent.append(file.read())
	file.close()
# Read content of PCB files 

page_num = 0
for filename in schem_names: # This 
	#Read content SCH files one at a time!!! In future may be replace for read content all SCH files
	file=open(filename,'rt')
	content = file.read()
	file.close()

	print attr
#Find all replacing strings in current schematic
	if attr_coord==True: #If used refdes attribute coordinates
		if force:# All refdes attributes are selected
			comp_list  = re.findall('T[^\n]+\s+%s=\w*\??' %(attr) ,content,flags=re.DOTALL)
		else:# Only NON numbering refdes attributes are selected (Example: R? DD? etc.)
			comp_list  = re.findall('T[^\n]+\s+%s=\w*\?' %(attr) ,content,flags=re.DOTALL)
		
	else: #If used component coordinates (list of strings)
		if force:
			#for embedded components
			comp_list  = re.findall('C\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+EMBEDDED.+?\[.+?\]\s+\{[^{}]*%s=\w*\??[^{}]*\}' %(attr) ,content,flags=re.DOTALL)
			#for non embedded components
			comp_list += re.findall('C\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+[^\n]+\s+\{[^{}]*%s=\w*\??[^{}]*\}' %(attr) ,content,flags=re.DOTALL)
		else:
			#for embedded components
			comp_list  = re.findall('C\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+EMBEDDED.+?\[.+?\]\s+\{[^{}]*%s=\w*\?[^{}]*\}' %(attr) ,content,flags=re.DOTALL)
			#for non embedded components
			comp_list += re.findall('C\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+[^\n]+\s+\{[^{}]*%s=\w*\?[^{}]*\}' %(attr) ,content,flags=re.DOTALL)

	if not comp_list: #True if no REFDESs for replacing
		print comp_list
		continue
	
	page_num += add_page_num  # Adding Page bias for new file 
	# Obtaining the component list
	for i in range(0,len(comp_list)): #Find coordinates to replacing
		xy = comp_list[i].split(None,3)[1:3]
		xy[0] = int(xy[0])
		xy[1] = int(xy[1])

#Select replacing algorythm by proper setup coordinates location order and some computation
		if sort == 'diag':
			comp_list[i] = [xy[0] - xy[1]] + [comp_list[i]]
		elif sort == 'lefttoright':
			comp_list[i] = [xy[0]] + [-xy[1]] + [comp_list[i]]
		elif sort == 'toptobot':
			comp_list[i] = [-xy[1]] + [xy[0]] + [comp_list[i]]
		elif sort == 'righttoleft':
			comp_list[i] = [-xy[0]] + [xy[1]] + [comp_list[i]]
		elif sort == 'bottotop':
			comp_list[i] = [xy[1]] + [-xy[0]] + [comp_list[i]]
		else:
			comp_list[i] = [comp_list[i]]

		#comp_list content: [coord1, coord2, 'replaced string of file']
		#Example:			[-50800 , 65100 , 'C 65100 50800 ... resistor-1.sym {....refdes=R12...}']
		
		#Find the replaced REFDES letter prefix and number suffix and ADD to component list 
		refdes=re.search('(.*)%s=([a-zA-Z]*)(\d+|\?*)' %(attr) ,comp_list[i][-1],flags=re.DOTALL)
		comp_list[i].insert(0,refdes.group(2))
		comp_list[i].append(refdes.group(3) if refdes.group(3) else '') #For letters only REFDESs (in future We can remove they from recplacing list)

		#comp_list content: ['REFDES prefix', coord1, coord2, 'replaced string of file'								,'Old NUMBER of REFDES']
		#Example:			[  'R'			, -50800 , 65100 , 'C 65100 50800 ... resistor-1.sym {....refdes=R12...},'12']


	# Sorting the replaced component/refdes list with REFDESs prefix and after with selected sort algorithm
	comp_list = sorted(comp_list)
	
	ref_curr_pref='0' #This is NON alfabetic for available renumber of empty refdess (e.g. "1", "2", "234")
	if 'ref_last_nums' not in locals():
		ref_last_nums={} #Lasts numbers for REFDESs previous schematic (For discontinuous renumber (without --pgskip)) 
		#Example of this dict content: {'DD':5, 'R':14, 'C':45}

	for i in range(len(comp_list)): #Replacing sorted attributes
		#Complex calculate of current number of attribute
		if ref_curr_pref == comp_list[i][0]: # This Attribure (with current prefix) is not first in this Schematic file
			if comp_list[i][~0]!='?' and comp_list[i][~0] in map(lambda x:x[~1],comp_list[i_first_prefix:i]): #Repeating attribute, e.g New SLOT of existing REFDES)
				comp_list[i].append(str(comp_list[i_first_prefix+map(lambda x:x[~1],comp_list[i_first_prefix:i]).index(comp_list[i][~0])][~0])) #Add previous number of this symbol for this SLOT or PART(for many symbols component)
			else: #Next number attribute
				ref_curr_num += 1
				comp_list[i].append(str(ref_curr_num)) #Add current number to component list
		else:
			try:ref_curr_num = page_num + 1 if page_num != 0 else ref_last_nums[comp_list[i][0]] + 1 
			except:ref_curr_num=1
			comp_list[i].append(str(ref_curr_num)) #Add current number to component list
			ref_curr_pref = comp_list[i][0]
                        i_first_prefix = i # Begin of current prefix
		ref_last_nums[ref_curr_pref]=ref_curr_num # Add current REFDES in last numbers

		#comp_list content: ['REFDES prefix', coord1, coord2, 'replaced string of file'				,'Old NUMBER','New NUMBER']
		#Example:			[  'R'			, -50800 , 65100 , 'C 65100 50800 ...{....refdes=R12...},	'12'	 ,	'4']
		
		content = content.replace(comp_list[i][~2],comp_list[i][~2].replace('%s=' %(attr) +comp_list[i][0]+comp_list[i][~1],'%s=' %(attr) +comp_list[i][0]+comp_list[i][~0])) #Replacing current string with New REFDES
		if log and verbose:
			print 'Replacing in sch : ', comp_list[i][0]+comp_list[i][~1], ' => ', comp_list[i][0]+comp_list[i][~0]
			print '<<< ', comp_list[i][~2]
			print '>>> ', comp_list[i][~2].replace('%s=' %(attr) +comp_list[i][0]+comp_list[i][~1],'%s=' %(attr) +comp_list[i][0]+comp_list[i][~0])
			print '------------------------------------'

		if attr=='refdes':
			for pcb_index in range(0,len(pcbcontent)): #Search current REFDES in pcb files and ADD context of REFDES (appropriate element ontex completely) to list of replaces
				elem = re.search('Element\[[^[\]]*"%s"[^[\]]*\]' %(comp_list[i][0]+comp_list[i][~1]),pcbcontent[pcb_index] ,flags=re.DOTALL)
				if elem:
					try:
						pcb_replaces.append([pcb_index,elem.group(),elem.group().replace(comp_list[i][0]+comp_list[i][~1],comp_list[i][0]+comp_list[i][~0])]) 
					except:pcb_replaces =  [[pcb_index,elem.group(),elem.group().replace(comp_list[i][0]+comp_list[i][~1],comp_list[i][0]+comp_list[i][~0])]] #Create new replace list
					if log and verbose:
						print 'Replacing in pcb: ', comp_list[i][0]+comp_list[i][~1], ' => ', comp_list[i][0]+comp_list[i][~0]
						print '<<< ', elem.group()
						print '>>> ', elem.group().replace(comp_list[i][0]+comp_list[i][~1],comp_list[i][0]+comp_list[i][~0])
						print '------------------------------------'

	if 'pcb_replaces' in vars(): #If PCB replace list are exists
		for i in pcb_replaces:	#Replace corresponding elements contexts, containing replaced REFDESs
			pcbcontent[i[0]] = pcbcontent[i[0]].replace(i[1],i[2])

# Write current replaced content (schematic) to current schematic file
	file=open(filename+Suffix,'wt')
	file.write(content)
	file.close()

#Write all PCB replaced contents to corresponing PCB file
for i in range(0,len(pcbcontent)):
	file=open(pcbnames[i]+Suffix,'wt')
	file.write(pcbcontent[i])
	file.close()

#Print log message to stdout (summary replaced)
if log:
	print 'Summary replaced'
	for i in comp_list:
		print i[0]+i[~1], ' => ', i[0]+i[~0]
		

