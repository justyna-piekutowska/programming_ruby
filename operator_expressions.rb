puts 1+2

class Fixnum
  alias old_plus +

  def +(other)
    old_plus(other).succ
  end
end

puts 1+2


class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end
  def <<(score)
    @total_score += score
    @count += 1
    self
  end
  def average
    fail "No scores" if @count.zero?
    Float(@total_score) / @count
  end
end

score = ScoreKeeper.new
score << 10 << 5

puts score.average

puts `ls`.split[34]
