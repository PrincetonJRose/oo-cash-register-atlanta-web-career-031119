class CashRegister

  def initialize(total = 0)
    @total = total
  end

  def discount
    dicount = 20
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

  def apply_discount(total, discount)
    discount_percent = discount / 100.0
    total = total - (total * discount_percent)
    
  end



end
