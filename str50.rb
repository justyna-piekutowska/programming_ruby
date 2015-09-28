require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

raw_text = %{The problem breakes down into two parts. First, given some text as a string, return a list of words.}

word_list= words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |word, count| count}
top_five = sorted.last(5)

p word_list
p counts
p sorted
p top_five

for i in 0...5
  result = top_five[i]
  word = result[0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end

top_five.each do |word, count|
  puts "#{word}: #{count}"
end

puts top_five.map do |word, count|
  "#{word}: #{count}"
end
