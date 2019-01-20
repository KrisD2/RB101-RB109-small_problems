def stringy(int, opt = 1)
  string = ""
  if opt == 1
   int.times { |x| x.even? ? (string << "1") : (string << "0") }
  elsif opt == 0
    int.times { |x| x.even? ? (string << "0") : (string << "1") }
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'