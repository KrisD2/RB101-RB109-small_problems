def fibonacci(num)
  fib_arr = [1, 1, 2]
  return fib_arr[num-1] if num <= 2
  3.upto(num - 1){ |n| fib_arr << fib_arr[n-1] + fib_arr[n-2] }
  fib_arr.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075