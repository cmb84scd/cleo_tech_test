class VendingMachine
  attr_reader :product, :amount_paid

  def initialize
    @product = nil
    @amount_paid = nil
  end

  def show_products
    { crisps: 0.40, chocolate: 0.50, water: 1.00 }
  end

  def select_product
    puts 'What product would you like?'
    @product = gets.chomp.to_sym
  end

  def insert_money
    puts 'Please insert coins.'
    @amount_paid = gets.chomp.to_f
    product_price = show_products.select {|k, v| k == @product}
    while @amount_paid < product_price.values[0] do
      puts 'Not enough money paid, please insert another coin.'
      @amount_paid += gets.chomp.to_f
    end
  end

  def vend
    select_product
    insert_money
    return @product
  end
end
