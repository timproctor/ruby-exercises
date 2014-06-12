# require_relative 'candy'

class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    0 if @candies.empty?
  end

  def count
    @candies.length
  end

  def <<(candy)
    @candies << candy
  end

  def type
    @candies.first.type
  end

  def contains?(candy)
    type == candy
  end

  def grab(candy)
    grabbed = []
    @candies.each do |candy|
      grabbed << candy.type
    end

    candy_index = grabbed.index(candy)
    @candies.delete_at(candy_index)
  end

  def take(number=1)
    @candies.pop(number)
  end


  # def take(number)
  #   @candies
  # end
end
#
# bag = Bag.new
# bag << Candy.new("Jawbreaker")
# bag << Candy.new("Jawbreaker")
# bag << Candy.new("Jolly Ranchers")
#
# p bag.grab("Jawbreaker")
# # p bag.count
# p bag.grab("Junior Mints")
# p bag.candies
# p bag.count
