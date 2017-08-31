require './lib/checkout.rb'

describe Checkout do

  it 'has a list of products on initialize' do
    expect(:products_list).not_to be_empty
  end

  it 'has an empty cart on initialize' do
    expect(subject.cart).to be_empty
  end

  it 'allows to add products to cart' do
    subject.add_to_cart(1)
    expect(subject.cart).not_to be_empty
  end

  it 'is able to return a total cost' do
    subject.add_to_cart(1)
    subject.add_to_cart(2)
    expect(subject.total_cost).to eq 9.25
  end

end
