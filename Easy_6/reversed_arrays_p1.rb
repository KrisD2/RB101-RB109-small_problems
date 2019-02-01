def reverse_it(arr)
  arr_last_index = arr.size - 1
  counter = 0
  until arr_last_index < counter
  arr << arr[arr_last_index - counter]
  counter += 1
  end
  arr.slice!(0, arr_last_index + 1)
  arr
end
