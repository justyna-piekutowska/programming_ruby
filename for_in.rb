#compare for...in with .each do |...| end

for string in ['bo', 'to', 'jest']
	print string, " "
end

['bo', 'to', 'jest'].each do |string|
	print string, " "
end