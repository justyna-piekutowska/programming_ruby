def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach" )
  "#{arg1}, #{arg2}, #{arg3}."
end

puts cool_dude
puts cool_dude("Bart")
puts cool_dude("Bart", "Elwood")
puts cool_dude("Bart", "Elwood", "Linus")

def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("elephant")
puts surround("fox")
puts surround("fox", 10)
