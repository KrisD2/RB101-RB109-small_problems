def triangle(*angles)
  return nil if angles.size != 3
  case
  when angles.inject(:+) != 180 || angles.any?{ |x| x <= 0 }
    :invalid
  when angles.all? { |x| x < 90 }
    :acute
  when angles.any? { |x| x > 90 }
    :obtuse
  else
    :right
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid