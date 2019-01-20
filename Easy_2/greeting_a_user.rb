print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name[0, (name.size - 1)].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end