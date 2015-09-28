def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{pattern}\n#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
puts show_regexp('Price $12.', /[aeiou]/)
puts show_regexp('Price $12.', /[\s]/)
puts show_regexp('Price $12', /[$.]/)

a = 'see [The PickAxe-page 123]'
puts show_regexp(a, /[A-F]/)
puts show_regexp(a, /[A-Fa-f]/)
puts show_regexp(a, /[A-F a-f]/)
puts show_regexp(a, /[A-F ]/)
puts show_regexp(a, /[A-F][a-f]/)
puts show_regexp(a, /[0-9]/)
puts show_regexp(a, /[0-9][0-9]/)
