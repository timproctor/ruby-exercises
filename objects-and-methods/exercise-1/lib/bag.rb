require_relative 'candy'

class Bag
  attr_reader :candies

  def initialize
    @empty = true
    @candies = Array.new
  end

  def empty?
    @candies.empty?
  end

  def <<(candy)
    @candies << candy
  end

  def count
    @candies.count
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

end
