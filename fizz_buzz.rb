#!/usr/bin/env ruby

print "Enter a number: "
num = gets.to_i
fizzbuzz_array = []

num.times do |i|
  puts i + 1
end

element = ""
element += "Fizz" if (num % 3).zero?
element += "Buzz" if (num % 5).zero?
element = num.to_s if element.empty?
fizzbuzz_array << element
