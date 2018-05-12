class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    
  end
  
  def void_transaction
    self.total -= self.last_transaction
  end
end
