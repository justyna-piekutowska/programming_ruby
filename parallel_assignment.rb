require 'pp'

a, b = 1, 2
puts a
puts b
a, b = b, a
puts a
puts b

a = 1, 2, 3, 4
pp a

a, *b = 1, 2, 3
pp a
pp b

*a, b = 1, 2, 3, 4
pp a
pp b

f, *g, h, i, j = 1, 2, 3, 4
pp f
pp g
pp h
pp i
pp j


a, (b, c), d = [1,2,3,4]
pp a
pp b
pp c
pp d

a, (b, c), d = 1,[2,3],4
pp a
pp b
pp c
pp d
