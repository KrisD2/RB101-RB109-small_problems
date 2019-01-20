def oddities(arr)
  odd_arr = []
  arr.map.with_index do |x, i|
    odd_arr << x if i.even?
  end
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def oddities2(arr)
  odd_arr = []
  counter = 0
  while counter < arr.size
    odd_arr << arr[counter]
    counter +=2
  end
  odd_arr
end

p oddities2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities2(['abc', 'def']) == ['abc']
p oddities2([123]) == [123]
p oddities2([]) == []

def oddities3(arr)
  odd_arr = []
  counter = 0
  until counter >= arr.size
    odd_arr << arr[counter]
    counter +=2
  end
  odd_arr
end

p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities3(['abc', 'def']) == ['abc']
p oddities3([123]) == [123]
p oddities3([]) == []