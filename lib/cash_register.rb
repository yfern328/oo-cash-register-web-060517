class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
    @current_total = 0.0
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @current_total = price * quantity
    @total += @current_total
    quantity.times {@items << title}
  end

  def apply_discount
    @total *= ((100 - @discount)/100.0)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @current_total
  end

end
