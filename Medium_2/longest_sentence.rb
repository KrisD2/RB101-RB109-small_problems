text = open('example_text.txt', &:read)

longest_sentence = ""

text.split(/[\.!\?]/).each do |str_sentence|
  word_arr_sentence = str_sentence.split(" ")
  if word_arr_sentence.size >= longest_sentence.split(" ").size
    longest_sentence = str_sentence
  end
end

print longest_sentence + "  ---> Word count: #{longest_sentence.split(" ").size}"
print "\n\n"

text = open('Frankenstein.txt', &:read)

longest_sentence = ""

text.split(/[\.!\?]/).each do |str_sentence|
  word_arr_sentence = str_sentence.split(" ")
  if word_arr_sentence.size >= longest_sentence.split(" ").size
    longest_sentence = str_sentence
  end
end

print longest_sentence + "  ---> Word count: #{longest_sentence.split(" ").size}"