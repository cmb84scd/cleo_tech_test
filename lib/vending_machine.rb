class VendingMachine
  attr_reader :product

  def initialize
    @product = nil
  end

  def show_products
    { 'crisps' => 0.40, 'chocolate' => 0.50, 'water' => 1.00 }
  end

  def select_product
    puts 'What product would you like?'
    @product = gets.chomp
  end
end
