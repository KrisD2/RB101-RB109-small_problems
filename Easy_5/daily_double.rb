def crunch(str)
  crunched_str = '' 
  str.chars.each do |char|
    next if crunched_str[-1] == char
    crunched_str << char
  end
  crunched_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''