def fizzbuzz(start_num, end_num)
  fizzbuzz_arr = []
  (start_num..end_num).each do |x|
    case
    when x % 3 == 0 && x % 5 == 0
      fizzbuzz_arr << "FizzBuzz"
    when x % 3 == 0
      fizzbuzz_arr << "Fizz"
    when x % 5 == 0
      fizzbuzz_arr << "Buzz"
    else
      fizzbuzz_arr << x
    end
  end
  fizzbuzz_arr.join(', ')
end

print fizzbuzz(1, 15)