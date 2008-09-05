#!/usr/bin/perl
# -*- perl -*-

# Copyright 2006 DJ Delorie <dj@delorie.com>
# Released under the terms of the GNU General Public License, version 2

sub baseboard {
    my ($file, $width, $height, $nbase) = @_;
    if (! $nbase) {
	$base = $file;
	$base =~ s@.*/@@;
    } else {
	$base = $nbase;
    }

    $pscript = "$base.pscript";
    open(PS, ">$pscript");
    push(@files_to_remove, "$base.pscript");

    open(S, $file) || die("$file: $!");
    $outname = "$base.panel.pcb";
    $outname =~ s/pnl\.panel\.pcb/pcb/;
    open(O, ">$outname");
    while (<S>) {
	if (/PCB\[.* (\d+) (\d+)\]/) {
	    s/ (\d+) (\d+)\]/ $width $height\]/;
	}
	s/Cursor\[.*\]/Cursor[0 0 0.0]/;
	next if /\b(Via|Pin|Pad|ElementLine|Line|Arc|ElementArc|Text)/;
	if (/Polygon|Element/) {
	    while (<S>) {
		last if /^\s*\)\s*$/;
	    }
	    next;
	}
	if (/Layer/) {
	    if (@panelvias) {
		print O @panelvias;
		@panelvias = ();
	    }
	}
	print O;
	if (/Layer/) {
	    print O scalar <S>;
	    print O @panelcopper;
	}
    }
    close O;
    close S;

    print PS "LoadFrom(Layout,$outname)\n";

    $ox = $oy = 0;
}

sub loadboard {
    my ($file) = @_;
    $seq = 1 + $seq;

    open(S, $file);
    open(O, ">temp-panel.$seq");
    while (<S>) {
	if (/PCB\[.* (\d+) (\d+)\]/) {
	    $width = $1;
	    $height = $2;
	}
	s/Cursor\[.*\]/Cursor[0 0 0.0]/;
	print O;
    }
    close O;
    close S;
    print PS "LoadFrom(LayoutToBuffer,temp-panel.$seq)\n";
    push(@files_to_remove, "temp-panel.$seq");
}

sub opaste {
    $vx = $ox;
    $vy = $oy + $height;
    print PS "PasteBuffer(ToLayout,$ox,$oy)\n";
    $ox += $width;
    $oy = 0;
}

sub vpaste {
    print PS "PasteBuffer(ToLayout,$vx,$vy)\n";
    $vy += $height;
}

sub done {
    print PS "SaveTo(LayoutAs,$outname)\n";
    print PS "Quit()\n";

    close PS;

    system "set -x; pcb --action-script $pscript";
    #system "pcb -x ps $base.panel.pcb";
    #unlink @files_to_remove;
}

1;
