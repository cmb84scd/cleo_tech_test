require 'vending_machine'
require 'stringio'

describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  it 'shows a list of products' do
    expect(vending_machine.show_products).to include({ 'crisps' => 0.40 })
  end

  describe '#select_product' do
    let(:input) { StringIO.new("crisps") }
    it 'lets you select a product through user input' do
      $stdin = input
      expect { vending_machine.select_product }.to output("What product would you like?\n").to_stdout
      $stdin = STDIN
    end
  end
end
