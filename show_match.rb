def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]},-#{match.post_match}"
  else
    "no match"
  end
end

p show_regexp('very interesting', /t/)
p show_regexp('Fast Waller', /lle/)
p show_regexp('Fast Waller', /z/)
