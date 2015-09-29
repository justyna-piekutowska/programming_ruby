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

#negation
puts show_regexp('Price $12.', /[^A-Z]/)
puts show_regexp('Price $12.', /[^\w]/)
puts show_regexp('Price $12.', /[a-z][^a-z]/)

puts show_regexp('It costs $12.', /\s/)
#\d- Decimal digit
puts show_regexp('It costs $12.', /\d/)

#Unicode or not
puts show_regexp('już.', /(?a)\w+/)
puts show_regexp('już.', /(?d)\w+/)
puts show_regexp('już.', /(?u)\w+/)

puts show_regexp('już.', /(?d)\W+/)
puts show_regexp('już.', /(?u)\W+/)

#POSIX
puts show_regexp('Price $12.', /[aeiou]/)
puts show_regexp('Price $12.', /[[:digit:]]/)
puts show_regexp('Price $12.', /[[:space:]]/)
puts show_regexp('Price $12.', /[[:^alpha:]]/)
puts show_regexp('Price $12.', /[[:punct:]:aeiou]/)

#literal characters in a character class
a = 'see [the PickAxe-page 123]'
puts show_regexp(a, /[\]]/)
puts show_regexp(a, /[0-9\]]/)
puts show_regexp(a, /[\d\-]/)

#Intersection of character classes
str = "now is the time"
str.gsub(/[a-z&&[^aeiou]], '*'/)

#\p
# encoding" utf-8
string = "∂y/∂x = 2πx"
puts show_regexp(string, /\p{Alnum}/)
puts show_regexp(string, /\p{Digit}/)
puts show_regexp(string, /\p{Space}/)
puts show_regexp(string, /\p{Greek}/)
puts show_regexp(string, /\p{Graph}/)

# period(.)
a = "It is a time."
puts show_regexp(a, /i.e/)
puts show_regexp(a, /./)
puts show_regexp(a, /\./)
