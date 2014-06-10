class Wallet
  def initialize
    @coins = []
  end

  def cents
    total = 0
    @coins.each do |coin|
      total += value_for_coin(coin)
    end
    total
  end

  def value_for_coin(coin)
    case coin
    when :penny
      1
    when :nickel
      5
    when :dime
      10
    when :quarter
      25
    when :dollar
      100
    end
  end

  def <<(coin)
    @coins << coin
  end

  # def take(*coins)
  #   coins.each do |coin|
  #     if idx = @coins.find_index(coin)
  #       @coins.delete_at(idx)
  #     end
  #   end
  # end
end
# wallet = Wallet.new
# 3.times { wallet << :penny }
# 3.times { wallet << :penny  }
# p wallet.piggy
# p wallet.cents
