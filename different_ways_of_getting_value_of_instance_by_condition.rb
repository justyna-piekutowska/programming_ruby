#Different ways of getting vale of instance from condition
# Example one
title = 
	if artist == "Boom"
		"Morning"
	elsif artist == "Parker"
		"Afternoon"
	else
		"null"
	end

#Example two
if artist == "Boom" then title = "Morning"
elsif artist == "Parker" then title = "Afternoon"
else title = "null"
end

#Example three
if artist == "Boom" 
	title = "Morning"
elsif artist == "Parker"
	title = "Afternoon"
else 
	title = "null"
end

#Different way
#Example one
unless duration > 180
	cost = 0.35
else
	cost = 0.25
end

#Example two
cost = duration > 180 ? 0.35 : 0.25



