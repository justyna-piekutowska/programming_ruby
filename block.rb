# Example one

square = "yes"
total = 0

[1, 2, 3].each do |val|
  square = val * val
  total += square
end

p "total = #{total}, square = #{square}"

# Example two

square = "yes"
total = 0

[1, 2, 3].each do |val; square|
  square = val * val
  total += square
end

p "total = #{total}, square = #{square}"