require 'product'

class VendingMachine
  attr_reader :product, :amount_paid, :products

  def initialize(products = Product.new)
    @product = nil
    @amount_paid = nil
    @products = products
  end

  def show_products
    @products.products
  end

  def select_product
    puts 'What product would you like?'
    @product = gets.chomp.to_sym
  end

  def insert_money
    puts 'Please insert coins.'
    @amount_paid = gets.chomp.to_i
  end

  def check_amount
    while @amount_paid < product_price.values[0] do
      puts 'Not enough money paid, please insert another coin.'
      @amount_paid += gets.chomp.to_i
    end
  end

  def change_required
    if @amount_paid > product_price.values[0]
      "#{@amount_paid - product_price.values[0]}p change and #{@product}"
    else
      @product
    end
  end

  def vend
    select_product
    insert_money
    check_amount
    change_required
  end

  private

  def product_price
    show_products.select {|k, v| k == @product}
  end
end
