File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end

File.open("testfile") do |file|
  file.each_line("s") {|line| puts "Got #{line.dump}"}
end

str = IO.read("testfile")
puts str.length
puts str[0]

arr= IO.readlines("testfile")
puts arr.length
puts arr[0]
