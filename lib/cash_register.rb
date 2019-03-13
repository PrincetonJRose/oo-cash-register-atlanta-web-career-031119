class CashRegister

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
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
    self.total += price * quantity
  end

  def apply_discount()
    discount_percent = discount / 100.0
    total = total - (total * discount_percent)

  end



end
