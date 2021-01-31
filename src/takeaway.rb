# frozen_string_literal: true

require './src/order'

class Takeaway
  attr_reader :menu, :order

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order
  end

  def printed_menu
    menu.print
  end

  def place_order(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
    end
    order.total
  end
end
