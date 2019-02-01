def buy_fruit(list)
  fruit_arr = []
  list.each { |items| items[1].times { fruit_arr << items[0] } }
  fruit_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
