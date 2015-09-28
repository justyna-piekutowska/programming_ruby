name = "Fats Waller"
name =~ /a/
name =~ /z/
/a/ =~ name
/a/.match(name)
Regexp.new("all").match(name)
