def short_long_short(str1, str2)
  short = ''
  long = ''
  if str1.size > str2.size
    long = str1
    short = str2
  else
    short = str1
    long = str2
  end
  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
