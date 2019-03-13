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

  def add_item(title, price, *quantity = 1)
    total += price * quantity
  end



end
