class Appointments
  def initialize
    @dates = Array.new
  end

  def earliest
    earliest = @dates.sort 
    earliest.first
  end

  def at(date)
    @dates << date
  end
end
