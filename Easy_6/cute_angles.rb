DEGREE = "\xC2\xB0"

def dms(num)
  arr = num.to_s.split('.')
  deg = arr[0].to_i
  min = 0
  sec = 0
  if arr.size > 1
    min = arr[1].prepend('.').to_f * 60
    sec = (min - min.floor) * 60
  end
 "#{deg}#{DEGREE}" + sprintf("%.2d", min.floor) + "'" + 
  sprintf("%.2d", sec.floor) + '"'
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")