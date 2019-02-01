def multiply_all_pairs(arr1, arr2)
  results = []
  arr1.each { |x| arr2.each { |y| results << x * y } }
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]