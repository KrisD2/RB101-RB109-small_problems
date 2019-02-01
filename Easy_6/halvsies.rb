def halvsies(arr)
  half = arr.size / 2
  half += 1 if arr.size.odd?
  nested_halves = []
  nested_halves << arr.slice(0, half)
  nested_halves << arr.slice(half..-1)
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]