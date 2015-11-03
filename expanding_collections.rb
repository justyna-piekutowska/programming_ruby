def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

puts five(1, 2, 3, 4, 5)
puts five(1, 2, 3, *['a', 'b'])
puts five(*['a', 'b'], 1, 2, 3)
puts five(*(10..14))
puts five(*[1, 2], 3, *(4..5))

array = ['a','b', 'c']
puts five(1, 2, *array)
