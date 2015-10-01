def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

puts show_regexp('bannana', /an+/)
puts show_regexp('bannana', /(an)+/)

a = 'red ball blue sky'

puts show_regexp(a, /blue|red/)
puts show_regexp(a, /(blue|red) \w+/)
puts show_regexp(a, /(red|blue) \w+/)
puts show_regexp(a, /red|blue \w+/)
puts show_regexp(a, /red (ball|angry) sky/)

a= 'the red angry sky'
puts show_regexp(a, /red (ball|angry) sky/)

puts show_regexp('He said "Hello"', /(\w)\1/)
puts show_regexp('Mississippi', /(\w+)\1/)
