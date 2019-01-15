#!/usr/bin/perl

use strict;
use warnings;
use FileHandle;

MAIN_CODE: {
    my $input = $ARGV[0];
    my $fh_OUT = new FileHandle;
    my $mkdir_cmd = "mkdir -p /tmp/SteveGitTest/";
    system($mkdir_cmd);
    my $output_file = "/tmp/SteveGitTest/$input.txt";
    my $r = reverse($input);
    $fh_OUT->open(">$output_file") || die "ERROR: Cannot open output file, $output_file, for writing.\n";
    print $fh_OUT "$r\n";
    $fh_OUT->close();
}
