class Product
  attr_reader :product, :price

  def initialize(product, price)
    @product = product
    @price = price
  end
end
