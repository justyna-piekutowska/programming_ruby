def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
a = "The mom is made of cheese"

puts show_regexp(a, /\w+/)
puts show_regexp(a, /\s.*\s/)
puts show_regexp(a, /\s.*?\s/)
puts show_regexp(a, /[aeiou]{2, 99}/)
puts show_regexp(a, /mo?o/)
puts show_regexp(a, /mo??o/)

# empty matches
puts show_regexp(a, /m*/)
puts show_regexp(a, /Z*/)
