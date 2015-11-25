# Zwraca pierwszy argument gdy jest on równy nil lub false
puts nil && 99

#Widzi że "cat" to string więc zwraca ostatnią wartość
puts "cat" && 99

# W przypadku II zwracany jest pierwszy element jeżeli nie jest false lub nil
puts false || 99
puts "cat" || 99
