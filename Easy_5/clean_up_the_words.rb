def cleanup(str)
  str.gsub(/[^\w]+/, " ")
end

p cleanup("---what's my +*& line?") == ' what s my line '