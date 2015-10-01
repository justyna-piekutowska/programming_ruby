/(\d\d):(\d\d)(..)/ =~ "12:50am"
puts "Hour is #$1, minute #$2"
/((\d\d):(\d\d))(..)/ =~ "12:50am"
puts "Time is #$1"
puts "Hour is #$2, minute #$3"
puts "AM/PM is #$4"

md = /(\d\d):(\d\d)(..)/.match("12:50am")
puts "Hour is #{md[1]}, minute #{md[2]}"
md = /((\d\d):(\d\d))(..)/.match("12:50am")
puts "Time is #{md[1]}"
puts "Hour is #{md[2]}, minute #{md[3]}"
puts "AM/PM is #{md[4]}"


def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
# match duplicated letter
puts show_regexp('He said "Hello"', /(\w)\1/)
# match duplicated substrings
puts show_regexp('Mississippi', /(\w+)\1/)

#Use names rather than numbers
# match duplicated letter
puts show_regexp('He said "Hello"', /(\w)\1/)
# match duplicated substrings
puts show_regexp('Mississippi', /(\w+)\1/)

# match duplicated letter
str = 'He said "Hello"'
puts show_regexp(str, /(?<char>\w)\k<char>/)

# match duplicated adjacent substrings
str = 'Mississippi'
puts show_regexp(str, /(?<seq>\w+)\k<seq>/)

/(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am"
puts "Hour is #{hour}, minute #{min}"

# You can mix named and position-based references
puts "Hour is #{hour}, minute #{$2}"
