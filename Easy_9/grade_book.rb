def get_grade(num1, num2, num3)
  avg = (num1 + num2 + num3) / 3  
  if avg < 60
    'F'
  elsif avg < 70
    'D'
  elsif avg < 80
    'C'
  elsif avg < 90
    'B'
  else
    'A'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"