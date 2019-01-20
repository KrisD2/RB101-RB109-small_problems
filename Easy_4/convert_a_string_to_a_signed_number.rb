DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  digits = string.chars.map do |char| 
    nil if char == "+" || char == '-'
    DIGITS[char] 
    end

  digits.shift if digits[0] == nil
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value *= -1 if string[0] == '-'
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100