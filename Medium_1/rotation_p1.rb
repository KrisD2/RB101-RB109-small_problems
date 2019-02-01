def rotate_array(arr)
  arr.slice(1..-1) << arr[0]
end

a = [1, 2, 3, 4]

p rotate_array(a)
p a

def rotate_string(str)
  rotate_array(str.chars).join
end

b = "Ruby"

p rotate_string(b)
p b

def rotate_ints(num)
  rotate_string(num.to_s).to_i
end

c = 1234

p rotate_ints(c)
p c