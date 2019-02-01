def after_midnight(str_time)
  hours, minutes = str_time.split(":").map(&:to_i)
  hours %= 24
  (hours * 60) + minutes
end


def before_midnight(str_time)
  hours, minutes = str_time.split(":").map(&:to_i)
  (1440 - ((hours * 60) + minutes)) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0