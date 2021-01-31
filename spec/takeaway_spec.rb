# frozen_string_literal: true

require './src/takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }
  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { instance_double('Order', total: 15.50) }
  let(:printed_menu) { 'Chicken  £3.50' }

  let(:dishes) do
    { Chicken: 1, Fish: 2 }
  end

  it 'Can show a list of dishes with prices ' do
    expect(takeaway.printed_menu).to eq(printed_menu)
  end

  it 'Can order some number of available dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

  it 'Knows the order total ' do
    allow(order).to receive(:add)
    total = takeaway.place_order(dishes)
    expect(total).to eq(15.50)
  end
end
