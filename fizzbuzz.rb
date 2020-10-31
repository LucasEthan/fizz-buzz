class FizzBuzz
  attr_reader :fizzbuzz_numbers

  def initialize(num)
    @fizzbuzz_numbers = generate_fizzbuzz(num)
  end

  def generate_fizzbuzz(num)
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
    fizzbuzz_array
  end
end
