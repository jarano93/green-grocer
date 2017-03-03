#!/usr/bin/perl

use strict;
use warnings;

my $arg = "$ARGV[0]";
$arg =~ s/\//-/g;
print "$arg\n";
