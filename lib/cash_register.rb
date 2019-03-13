require 'pry'

class CashRegister

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  ITEMS = []

  def discount
    @discount
  end

  def discount=(new_discount)
    @discount = new_discount
  end

  def total
    @total
  end

  def total=(new_total)
    @total = new_total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    ITEMS << title
    self.total += price * quantity
  end

  def apply_discount()
    if dicount != 0
      discount_percent = discount / 100.0
      self.total = self.total - (self.total * discount_percent)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end

  end

  def items_returns
    ITEMS
  end



end
