#!/usr/bin/env ruby

def divisible_by_3?(number)
  (number % 3).zero?
end

def divisible_by_5?(number)
  (number % 5).zero?
end
begin
  print "Enter a number: "
  num = Integer(gets)

  if num.negative?
    puts "You must enter a positive integer"
  end

  fizzbuzz_array = []

  num.times do |i|
    # Because we start counting from 1, add 1
    current_num = i + 1

    entry = ""
    entry += "Fizz" if divisible_by_3?(current_num)
    entry += "Buzz" if divisible_by_5?(current_num)

    # If the number is divisible neither by 3 nor 5, just use the number
    entry = current_num.to_s if entry.empty?
    fizzbuzz_array << entry
  end

  puts fizzbuzz_array
rescue ArgumentError
  puts "You must enter a integer"
end
