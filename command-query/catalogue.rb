class Catalogue
  def initialize
    @inventory = []
  end

  def cheapest
    if @inventory.empty?
      nil
    else
      cheap = @inventory.sort_by{|item| item.price}
      cheap.first.product
    end
  end

  def <<(item)
    @inventory << item
  end

end
