class Money
  attr_reader :coins

  def initialize(coins)
    @coins = coins
  end

  def add(coin, quantity)
    @coins[coin] = quantity
  end
end
