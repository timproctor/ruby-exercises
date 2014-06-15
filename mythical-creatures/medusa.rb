class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name    = name
    @stare   = true
    @statues = Array.new(0)
  end

  def stare(victim)
    victim.stoned = true
    @statues << victim
  end

end


class Person

  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
