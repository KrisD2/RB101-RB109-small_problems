text = open('example_text.txt', &:read)

longest_para = ""

text.split(/\n\n/).each do |paragraph|
  para_arr_sentence = paragraph.split(" ")
  if para_arr_sentence.size >= longest_para.split(" ").size
    longest_para = paragraph
  end
end

print longest_para