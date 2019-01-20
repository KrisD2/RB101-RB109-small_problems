puts ">> What is the bill?"
bill = gets.chomp.to_f
puts ">> What is the tip percentage?"
tip_percent = gets.chomp.to_f 

tip = bill * ( tip_percent / 100 )
total = tip + bill

tip = sprintf("%.2f", tip)
total = sprintf("%.2f", total)

puts ""
puts "The tip is $#{tip}"
puts "The total is #{total}"