class Product
  attr_reader :products

  def initialize(products)
    @products = products
  end

  def add(item, price)
    @products[item.to_sym] = price.to_i
  end
end
