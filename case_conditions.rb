#case
number = 5
color = case number
	when 1..2 then "Blue"
	when 3..7 then "Red"
	when 7..20 then "Yellow"
	when 21..42 then "White"
	else "Orange"
end
puts color