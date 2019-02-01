def sequence(num)
  sequence_arr = []
  num.times { |x| sequence_arr << x + 1 }
  sequence_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]