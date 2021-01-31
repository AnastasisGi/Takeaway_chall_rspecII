# frozen_string_literal: true

class Menu
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    dishes.map do |dish, price|
      format('%s £%.2f', dish.capitalize, price)
    end.join(', ')
  end

  def has_dish?(dish)
    !dishes[dish].nil?
  end

  def price(dish)
    dishes[dish]
  end
end
