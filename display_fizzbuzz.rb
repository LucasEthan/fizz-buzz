#!/usr/bin/env ruby

require_relative "fizzbuzz_helper"
require_relative "fizzbuzz"

include FizzBuzzHelper

begin
  print "Enter a number: "
  num = Integer(gets)
  raise InvalidNumberError unless num.positive?
rescue InvalidNumberError
  puts "You must enter an integer"
end

if num < 1
  puts "You must enter a positive integer"
end

fizzbuzz = FizzBuzz.new(num)
puts fizzbuzz.fizzbuzz_numbers
