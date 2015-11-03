def meth_one
  "one"
end
puts meth_one

def meth_two(arg)
  case
  when arg > 0 then "positive"
  when arg < 0 then "negative"
  else
  end
end

puts meth_two(23)
puts meth_two(0)

def meth_tree
  100.times do |num|
    square = num * num
    return num, square if square > 1000
  end
end

puts meth_tree
