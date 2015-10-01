def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

a = "red ball blue sky"
b = "blue sky red ball"
puts show_regexp(a, /d|e/)
puts show_regexp(a, /al|lu/)
puts show_regexp(a, /red ball|angry sky/)

puts show_regexp(b, /d|e/)
puts show_regexp(b, /al|lu/)
puts show_regexp(b, /red ball|angry sky/)
