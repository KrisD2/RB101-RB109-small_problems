def product(int)
  return int if int == 1
  int * product(int - 1)
end

def sum(int)
  return int if int == 1
  int + sum(int - 1)
end

puts ">> Please enter an integer greater than 0:"
user_integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation_choice = gets.chomp

result = 0
operation = 'product' if operation_choice == 'p'
operation = 'sum' if operation_choice == 's'
operation_choice == 's' ? (result = sum(user_integer)) : (result = product(user_integer))

puts "The #{operation} of the integers between 1 and #{user_integer} is #{result}"
