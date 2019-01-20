print "Please write a word or multiple words: "
string_input = gets.chomp
char_array = string_input.chars
char_array.delete(" ")

puts "There are #{char_array.size} characters in #{string_input}."