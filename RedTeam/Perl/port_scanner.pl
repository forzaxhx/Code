#!/usr/bin/perl

# Author: Forzax HX
# Perl port scanner

use strict;
use warnings;
use Net::IP;
use Socket;

my $ip = shift || '127.0.0.1';
my $port = shift || 21;
my $proto = 'tcp';
my $timeout = 5;
my $cnt = 0;
my $msg = "Puerto $port en la IP $ip";

socket(SERVER, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
connect(SERVER, $ip) or die "connect: $!";

while (1) {
  select(SERVER);
  $ | = 1;
  if (sysread(SERVER, $buf, 1) != 1) {
    die "error reading from socket: $!";
  }
  if ($buf = ~m / ^ ([0 - 9] + ) $ / ) {
    $cnt++;
    printf("%s", $msg);
    }
    else {
      die "invalid input";
    }
  }