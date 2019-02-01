def substrings_at_start(str)
  substring_arr = []
  substring = ''
  str.chars.each do |char|
    substring += char
    substring_arr << substring
  end
  substring_arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']