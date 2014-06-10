class Adult
  def initialize
    @sober = true
    @count = 0
  end

  def sober?
    @count <= 2
  end

  def consume_an_alcoholic_beverage
    @count += 1
  end
end
