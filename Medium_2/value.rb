def featured(num)
  if num >= 9_876_543_210
    puts "There is no possible number that fulfills those requirements."
    return
  end
  num -= num % 7
  num += 7
  loop do
    return num if num.odd? && !num.to_s.chars.uniq!
    num += 7
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)