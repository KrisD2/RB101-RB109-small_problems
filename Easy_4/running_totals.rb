def running_total(arr)
  running_total_arr = []
  accum = 0
  for i in arr
    accum += i
    running_total_arr << accum
  end
  running_total_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []