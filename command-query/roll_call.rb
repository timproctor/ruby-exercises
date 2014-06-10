class RollCall

  def initialize
    @roll_call = Array.new
  end

  def longest_name
    order = @roll_call.sort_by do |name|
              name.length
            end
    order.last
  end


  def <<(name)
    @roll_call << name
  end
end
