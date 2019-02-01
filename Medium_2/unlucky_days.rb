require 'date'

def friday_13th(year)
  count = 0
  1.upto(12) do |month| 
    count += 1 if Date.new(year, month, 13).wday == 5
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2