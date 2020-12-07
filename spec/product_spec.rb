require 'product'

describe Product do
  let(:product) { Product.new({ crisps: 40 }) }

  it 'lets you add products' do
    product.add('chocolate', 50)
    expect(product.products).to include({ chocolate: 50 })
  end
end
