def duble(p1)
  yield(p1*2)
end

puts duble(3) {|val| "I got #{val}" }
puts duble("tom") {|val| "Then I got #{val}" }

class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end
  def get_tax(amount)
    "#@name on #{amount} = #{@block.call(amount)}"
  end
end

tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075 }
puts tc.get_tax(100)
puts tc.get_tax(250)
