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

def palindromes(str)
  substrings(str).select{ |word| word == word.reverse && word.size >= 2 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]