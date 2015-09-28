def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "%#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
str = "this is\nthe time"
puts show_regexp(str, /^the/)
puts show_regexp(str, /is$/)
puts show_regexp(str, /\Athis/)
puts show_regexp(str, /\Athe/)
puts show_regexp("this is\nthe time", /\bis/)
puts show_regexp("this is\nthe time", /\Bis/)
