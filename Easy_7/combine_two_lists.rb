def interleave(arr1, arr2)
  interleave_arr = []
  arr1.map.with_index do |_, index|
    interleave_arr << arr1[index]
    interleave_arr << arr2[index]
  end
  interleave_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']