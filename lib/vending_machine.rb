class VendingMachine
  attr_reader :product, :amount_paid, :products, :money

  def initialize(products = Product.new, money = Money.new)
    @product = nil
    @amount_paid = nil
    @products = products
    @money = money
  end

  def show_products
    @products.products
  end

  def show_coins
    @money.coins
  end

  def select_product
    puts 'What product would you like?'
    @product = gets.chomp.to_sym
  end

  def insert_money
    puts 'Please insert coins.'
    @amount_paid = gets.chomp.to_i
    @money.coins[@amount_paid] += 1
  end

  def check_amount
    while @amount_paid < product_price.values[0] do
      puts 'Not enough money paid, please insert another coin.'
      amount = gets.chomp.to_i
      @money.coins[amount] += 1
      @amount_paid += amount
    end
  end

  def change_required
    change = @amount_paid - product_price.values[0]
    @products.products.delete(product)
    if change.positive?
      @money.coins[change] -= 1
      "#{change}p change and here is your #{@product}"
    else
      "Here is your #{@product}"
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
    show_products.select { |k, _v| k == @product }
  end
end
