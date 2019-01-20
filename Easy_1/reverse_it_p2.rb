def reverse_words(string)
  arr = string.split
  arr.each { |x| if x.size >= 5 then x.reverse! end }
  arr.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS