def substrings(str)
  substring_arr = []
  str.chars.map.with_index do |x, idx|
    substring = ''
    (str.size-idx).times do |y|
      substring += str[y+idx]
      substring_arr << substring
    end
  end
  substring_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]