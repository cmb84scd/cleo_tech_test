require 'money'

describe Money do
  let(:money) { Money.new({ 1 => 10, 2 => 10, 5 => 10, 10 => 10 }) }

  it 'lets you add coins' do
    money.add(20, 10)
    expect(money.coins).to include({ 20 => 10 })
  end
end
