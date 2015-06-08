#!/usr/bin/env ruby
require_relative 'parser.rb'
require_relative 'calculator.rb'

command = gets.strip
parser = Parser.new
while command != 'exit'
  puts parser.parse(command)
  command = gets.strip
end
