require 'vending_machine'

describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  it 'shows a list of products' do
    expect(vending_machine.show_products).to include({ 'crisps' => 0.40 })
  end
end
