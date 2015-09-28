f= File.open("testfile")
f.each do |line|
  puts "The line is: #{line}"
end
f.close
