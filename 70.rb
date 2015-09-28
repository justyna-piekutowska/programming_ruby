require 'pp'

class Parent
   def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

class Child < Parent
end
c = Child.new
c.say_hello

class Parent
end

class Child < Parent
end

pp Child.superclass

class Parent
end
pp Parent.superclass
