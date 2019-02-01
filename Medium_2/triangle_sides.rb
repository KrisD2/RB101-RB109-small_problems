def triangle(*args)
  case
  when args.min(2).inject(:+) <= args.max
    :invalid
  when args.uniq.size == 2
    :isosceles
  when args.uniq.size == 1
    :equilateral
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid