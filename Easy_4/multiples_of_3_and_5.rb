def multisum(num)
  multiples = []
  for i in (1..num)
    multiples << i if (i % 3 == 0) || (i % 5 == 0)
  end
  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168