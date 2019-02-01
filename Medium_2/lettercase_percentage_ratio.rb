def letter_percentages(str)
  total = str.size
  hsh = {}
  hsh[:lowercase] = str.count('a-z') / total.to_f * 100
  hsh[:uppercase] = str.count('A-Z') / total.to_f * 100
  hsh[:neither] = str.count('^a-zA-Z') / total.to_f * 100
  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }