a = b = 1 + 2 + 3
puts a
puts b

a = (b = 1 + 2) + 3
puts a
puts b

class ProjectList
  def initialize
    @projects = []
  end
  def projects=(list)
    @projects = list.map(&:upcase)
  end
  def [](offset)
    @projects[offset]
  end
end
# store list of names in uppercase
list = ProjectList.new
list.projects = %w{ be happy and fly as a bird }
puts list[4]
puts list[0]
