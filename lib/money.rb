class Money
  attr_reader :coins

  def initialize(coins)
    @coins = coins
  end

  def add(coin, quantity)
    @coins[coin.to_i] = quantity.to_i
  end
end
