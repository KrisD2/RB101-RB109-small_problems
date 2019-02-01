def double_consonants(str)
  str_arr = str.chars.map do |char|
              if char.index(/[b-df-hj-np-tv-z]/i)
                char * 2
              else
                char
              end
            end
  str_arr.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""