def diamond(size)
  top_half_diamond(size)
  middle_diamond(size)
  bottom_half_diamond(size)
end

def top_half_diamond(size)
  middle = size/2
  0.upto(middle-1) do |n|
    puts " " * (middle-n) + "*" * ((n * 2) + 1)
  end
end

def bottom_half_diamond(size)
  middle = size/2
  (middle - 1).downto(0) do |n|
    puts " " * (middle-n) + "*" * ((n * 2) + 1)
  end  
end

def middle_diamond(size)
  puts "*" * size
end

diamond(1)
diamond(3)
diamond(9)