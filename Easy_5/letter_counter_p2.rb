def word_sizes(str)
  word_size_count = {}
  word_size_count.default = 0
  str.split.each do | x |
    word_size_count[x.count("a-zA-Z")] += 1
  end
  word_size_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}