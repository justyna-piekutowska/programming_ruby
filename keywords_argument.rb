def search(field, genre: nil, duration: 120)
  p [field, genre, duration]
end

puts search(:title)
puts search(:title, genre: "jazz")

def search(field, genre: nil, duration: 120, **rest)
  p [field, genre, duration, rest]
end

puts search(:title, duration: 200, top: 5, genre: "jazz")
