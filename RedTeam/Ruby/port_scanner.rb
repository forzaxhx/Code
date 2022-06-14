#!/usr/bin/ruby

# Author: ForzaxHX
# Ruby port scanner

require 'net/socket'

loop do
  print "Puertos abiertos:"
ports = Socket.get_all_open_ports
puts ports.sort
end