arr = []

puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
arr << num1

puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i
arr << num2

puts "==> Enter the 3rd number:"
num3 = gets.chomp.to_i
arr << num3

puts "==> Enter the 4th number:"
num4 = gets.chomp.to_i
arr << num4

puts "==> Enter the 5th number:"
num5 = gets.chomp.to_i
arr << num5

puts "==> Enter the last number:"
num6 = gets.chomp.to_i

if arr.include? (num6) 
  puts "The number #{num6} appears in #{arr}."
else
  puts "The number #{num6} does not appear in #{arr}."
end