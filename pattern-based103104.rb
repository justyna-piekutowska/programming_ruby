a = "quick brown fox"
puts a.sub(/[aeiou]/, '*')
puts a.gsub(/[aeiou]/, '*')
puts a.sub(/\s\S+/, '')
puts a.gsub(/\s\S+/, '')
puts a.sub(/^./) {|match| match.upcase }
puts a.gsub(/[aeiou]/) {|vowel| vowel.upcase}

def mixed_case(name)
  name.downcase.gsub(/\b\w/) {|first| first.upcase}
end

puts mixed_case("DAVE THOMAS")
puts mixed_case("dave thomas")
puts mixed_case("dAvE tHoMaS")

def mixed_case(name)
  name.downcase.gsub(/\b\w/, &:upcase)
end
puts mixed_case("dAvE tHoMas")

replacement = { "cat" => "feline", "dog" => "canine" }
replacement.default = "unknown"

puts "cat and dog".gsub(/\w+/, replacement)
