class Children
  def initialize
    @children = Array.new
  end

  def eldest
    eldest = @children.sort_by do |child|
      child.age
    end
    eldest.last
  end

  def <<(child)
    @children << child
  end
end
