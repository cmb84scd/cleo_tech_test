class VendingMachine
  attr_reader :product, :amount_paid

  def initialize
    @product = nil
    @amount_paid = nil
  end

  def show_products
    { 'crisps' => 0.40, 'chocolate' => 0.50, 'water' => 1.00 }
  end

  def select_product
    puts 'What product would you like?'
    @product = gets.chomp
  end

  def insert_money
    puts 'Please insert coins.'
    @amount_paid = gets.chomp.to_f
  end
end
