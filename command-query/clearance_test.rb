gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'clearance'
require_relative 'item'

class ClearanceTest < Minitest::Test

  def test_no_items_are_on_clearance
    clearance = Clearance.new
    assert_equal nil, clearance.best_deal
  end

  def test_highest_percent_off_with_one_item
    clearance = Clearance.new
    clearance << Item.new("socks", price: 5, discount: 1)
    assert_equal "socks", clearance.best_deal
  end

  def test_highest_percent_off_of_many_items
    # skip
    clearance = Clearance.new
    clearance << Item.new("shirt", price: 16, discount: 2)
    clearance << Item.new("pants", price: 10, discount: 5)
    clearance << Item.new("jacket", price: 30, discount: 10)
    clearance << Item.new("dress", price: 40, discount: 30)
    assert_equal "dress", clearance.best_deal
  end

end
