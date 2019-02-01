def my_swapcase(str)
  swapcase_arr = str.chars.map do |char|
                   if char.index(/[A-Z]/)
                     char.downcase
                   elsif char.index(/[a-z]/)
                     char.upcase
                   else
                     char
                   end
                 end
    swapcase_arr.join
end

p my_swapcase('CamelCase') == 'cAMELcASE'
p my_swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'