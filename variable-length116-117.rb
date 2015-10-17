def varargs(arg1, *rest)
  "arg1=#{arg1}. rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", "two")
puts varargs "one", "two", "three"

def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, spalt: #{splat.inspect}, " +
    "last: #{last.inspect}"
end

puts split_apart(1, 2)
puts split_apart(1, 2, 3)
puts split_apart(1, 2, 3, 4)

def split_aparts(first, *, last)
  puts "First: #{first.inspect}, " +
    "last: #{last.inspect}"
end

puts split_aparts(1, 2)
puts split_aparts(1, 2, 3)
puts split_aparts(1, 2, 3, 4)
