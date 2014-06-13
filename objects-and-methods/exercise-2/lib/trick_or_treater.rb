# require_relative 'candy'
# require_relative 'costume'

class TrickOrTreater
  attr_reader :dressed_up_as, :bag, :sugar_level

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Array.new
    @sugar_level = 0
  end

  def has_candy?
    if @bag.empty?
      false
    else
      true
    end
  end

  def <<(candy)
    @bag << candy
  end

  def candy_count
    @bag.count
  end

  def eat
    @sugar_level += @bag.first.sugar
    @bag.shift
  end


end

# trick_or_treater = TrickOrTreater.new(Costume.new("Borg"))
# trick_or_treater.bag << Candy.new("Candy Canes", 88)
# trick_or_treater.bag << Candy.new("Dum Dum Pops", 83)
# trick_or_treater.bag << Candy.new("Lollipops", 71)
# p trick_or_treater.bag
#
# p trick_or_treater.eat
# p trick_or_treater.sugar_level
