# require_relative 'item'

class Clearance
  def initialize
    @bag = Array.new
    @bag ||= nil
  end

  def best_deal
    if @bag.empty?
      nil
    else
      percent_off
    end
  end

  def percent_off
    sorted = @bag.sort_by do |item|
      (item.price[:price].to_f - item.price[:discount].to_f)/item.price[:price].to_f
    end
    sorted.first.name
  end

  def <<(item)
    @bag << item
  end
end

# clearance = Clearance.new
# clearance << Item.new("socks", price: 5, discount: 1)
# # clearance << Item.new("socks", price: 5, discount: 1)
# # clearance << Item.new("pants", price: 10, discount: 5)
# # clearance << Item.new("jacket", price: 30, discount: 10)
#
#
# p clearance.percent_off
# p clearance.best_deal
