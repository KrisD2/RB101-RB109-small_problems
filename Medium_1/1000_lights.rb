def toggle_switches(hsh, multiple)
  hsh.each_with_object({}) do |(key, value), new_hsh|
    new_hsh[key] = !value if key % multiple == 0
    new_hsh[key] = value if key % multiple != 0
  end
end

def switches(n)
  bank_of_switches = {}
  n.times { |x| bank_of_switches[x + 1] = false }
  n.times do |pass|
    bank_of_switches = toggle_switches(bank_of_switches, pass + 1)
  end
  bank_of_switches.select{ |_, v| v == true}.keys
end

p switches(5)
p switches(10)