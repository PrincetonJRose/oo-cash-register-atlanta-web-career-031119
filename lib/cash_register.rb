require 'pry'

class CashRegister

  def initialize(discount = 0, total = 0, items = [], prices = [])
    @total = total
    @discount = discount
    @items = items
    @prices = prices
  end

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
    quantity.times { @items << @title }
    @prices << price
    self.total += price * quantity
  end

  def apply_discount()
    if self.discount == 0
      "There is no discount to apply."
    else
      discount_percent = self.discount / 100.0
      self.total = self.total - (self.total * discount_percent)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @prices[-1]
  end

end
