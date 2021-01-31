# frozen_string_literal: true

require './src/menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }

  let(:dishes) do
    {
      Chicken: 3.60,
      Falafel: 4.20
    }
  end

  it 'Can show a list of dishes with prices ' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'Prints a list if dishes with prices ' do
    printed_menu = 'Chicken £3.60, Falafel £4.20'
    expect(menu.print).to eq(printed_menu)
  end

  it 'Tells if a dish is on the menu ' do
    expect(menu.has_dish?(:Chicken)).to be true
  end

  it 'Tells if a dish is not on the menu ' do
    expect(menu.has_dish?(:beef)).to be false
  end

  it 'Knows the price ' do
    expect(menu.price(:chicken)).to eq(dishes[:chicken])
  end
end
