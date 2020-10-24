#!/usr/bin/env ruby

require_relative "fizzbuzz_helper"
require_relative "fizzbuzz_class"

include FizzBuzzHelper

begin
  print "Enter a number: "
  num = Integer(gets)
rescue ArgumentError
  puts "You must enter an integer"
end

if num < 1
  puts "You must enter a positive integer"
end

create_array(num)
