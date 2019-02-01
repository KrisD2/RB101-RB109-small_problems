def my_own_reverse(arr)
  arr.map.with_index { |_, index| arr[arr.size - 1 - index] } 
end

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = my_own_reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true