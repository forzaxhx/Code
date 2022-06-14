#!/usr/bin/perl

# Author: FrozaxHX
# Perl Reverse Shell

use strict;
use warnings;

my $in = shift || die "Usage: $0 input";
open my $fh, '<', $in or die "could not open '$in': $!";
while ( < $fh > ) {
  chomp;
  print $_;
}
close $fh;