require 'vending_machine'

describe VendingMachine do
  let(:product) { Product.new({ crisps: 40, chocolate: 40 }) }
  let(:money) { Money.new({ 10 => 10, 20 => 10, 50 => 10 }) }
  let(:vending_machine) { VendingMachine.new(product, money) }

  it 'shows a list of products' do
    expect(vending_machine.view_products).to include({ crisps: 40 })
  end

  it 'shows the coins in the machine' do
    expect(vending_machine.view_coins).to include({ 20 => 10 })
  end

  describe '#vend' do
    it 'lets you buy a product' do
      expect(vending_machine.vend).to eq 'Here is your crisps'
      expect(vending_machine.view_products).not_to include({ crisps: 40 })
    end

    it 'lets you buy a product and gives you change' do
      expect(vending_machine.vend).to eq '10p change and here is your chocolate'
      expect(vending_machine.view_coins).to eq({ 10 => 9, 20 => 10, 50 => 11 })
    end
  end
end
