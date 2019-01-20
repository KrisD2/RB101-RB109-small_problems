DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(num)
  remainder = 0
  digitplace = 10
  arr = []
  return '0' if num == 0
  until num - remainder <= 0
    current_digit = (num % digitplace) - remainder
    arr.unshift((current_digit * 10) / digitplace)
    remainder += current_digit
    digitplace *= 10
  end 
  arr.map { | x | DIGITS[x] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
