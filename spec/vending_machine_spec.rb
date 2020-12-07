require 'vending_machine'
require 'stringio'

describe VendingMachine do
  let(:product) { Product.new({ crisps: 40 }) }
  let(:vending_machine) { VendingMachine.new(product) }

  it 'shows a list of products' do
    expect(vending_machine.show_products).to include({ crisps: 40 })
  end

  describe '#vend' do
    let(:input) { StringIO.new("crisps\n0.20\n0.20\n")}

    it 'lets you buy a product' do
      $stdin = input
      $stdin = STDIN
      expect(vending_machine.vend).to eq :crisps
    end

    let(:too_much_money) { StringIO.new("crisps\n0.50\n")}

    it 'lets you buy a product and gives you change' do
      $stdin = too_much_money
      $stdin = STDIN
      expect(vending_machine.vend).to eq '10p change and crisps'
    end
  end
end
