class Money
  def initialize
    @amount = 0
  end

  def amount
    @amount
  end

  def earn(bucks)
    @amount += bucks
  end

  def spend(bucks)
    @amount -= bucks
  end

end
