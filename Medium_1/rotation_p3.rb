def rotate_rightmost_digits(num, n)
  num = num.to_s.chars
  rotated_num = num.delete_at(-n)
  (num << rotated_num).join.to_i
end

def max_rotation(num)
  digits = num.to_s.size
  until digits == 1
    num = rotate_rightmost_digits(num, digits)
    digits -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845