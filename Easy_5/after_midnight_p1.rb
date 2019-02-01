def time_of_day(time_in_minutes)
  time_in_minutes %= 1440
  hours, minutes = time_in_minutes.divmod(60)
  sprintf("%.2d", hours) + ":" + sprintf("%.2d", minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"