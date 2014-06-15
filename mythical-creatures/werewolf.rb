class Werewolf
  attr_reader :name, :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end

  def change!
    if @human
      @human = false
    else
      @human = true
    end
  end

  def werewolf?
    @human == false
  end

end
