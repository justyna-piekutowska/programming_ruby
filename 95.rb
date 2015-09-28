str = "Dog ans Cat"
new_str = str.sub(/Cat/, "Gerbil")
new_str1 = str.sub(/a/, "*")
new_str2 = str.gsub(/a/, "*")
puts "Let's go to the #{new_str} for a print"
puts "Using sub: #{new_str1}"
puts "Using gsub: #{new_str2}"

str = "now is the time"
str.gsub!(/t/, "*")
str.sub!(/i/, "T")
puts str
