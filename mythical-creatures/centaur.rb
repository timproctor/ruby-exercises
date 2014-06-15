class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name      = name
    @breed     = breed
    @standing  = true
    @is_asleep = false
    @actions   = 0
  end

  def shoot
    perform_action("Twang!!!")
  end

  def run
    perform_action("Clop clop clop clop!!!")
  end

  def cranky?
    @actions >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      "NO!"
    else
      @is_asleep = true
      @actions = 0
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    not standing?
  end

  def stand_up
    @standing = true
  end

  private

  def perform_action(phrase)
    @actions += 1

    if cranky? || laying?
      "NO!"
    else
      phrase
    end
  end
end
