def palindrome?(str)
  reversed_string = ""
  counter = 0
  
  while counter < str.size
    reversed_string.prepend str[counter]
    counter += 1
  end
  str == reversed_string
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true