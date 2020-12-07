require 'vending_machine'
require 'stringio'

describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  it 'shows a list of products' do
    expect(vending_machine.show_products).to include({ crisps: 0.40 })
  end

  describe '#select_product' do
    let(:input) { StringIO.new('crisps') }
    it 'lets you select a product through user input' do
      $stdin = input
      expect { vending_machine.select_product }.to output("What product would you like?\n").to_stdout
      $stdin = STDIN
      expect(vending_machine.product).to eq :crisps
    end
  end

  describe '#insert_money' do
    let(:money) { StringIO.new('0.50')}

    it 'lets you insert money to buy product' do
      $stdin = money
      expect { vending_machine.insert_money }.to output("Please insert coins.\n").to_stdout
      $stdin = STDIN
      expect(vending_machine.amount_paid).to eq 0.50
    end
  end

  describe '#vend' do
    let(:input) { StringIO.new("crisps\n0.20\n0.20\n")}

    it 'lets you buy a product' do
      $stdin = input
      expect { vending_machine.vend }.to output("What product would you like?\nPlease insert coins.\nNot enough money paid, please insert another coin.\n").to_stdout
      $stdin = STDIN
    end
  end
end
