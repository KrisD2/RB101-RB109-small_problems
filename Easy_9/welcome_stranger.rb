def greetings(name_arr, title_hash)
  print "=> Hello, " + name_arr.join(' ') + "! "
  print "Nice to have a #{title_hash[:title]} #{title_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })