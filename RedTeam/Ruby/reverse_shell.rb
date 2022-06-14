#!/usr/bin/ruby

# Author: ForzaxHX
# Ruby reverse shell

require 'shellwords'

def reverse_shell(command)
shellwords(command).reverse.join(' ')
end

if ARGV.length > 0
reverse_shell(ARGV[0])
else
  puts "Usage: reverse_shell <command>"
end