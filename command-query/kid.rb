class Kid
  def initialize
    @grams = 0
  end


  def grams_of_sugar_eaten
    @grams
  end

  def eat_candy
    @grams += 5
  end

  def hyperactive?
    @grams >= 60
  end
end
