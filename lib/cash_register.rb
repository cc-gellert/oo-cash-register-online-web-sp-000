class CashRegister 
  attr_accessor :total 
  def initialize(emplDisc=0)
    @total = 0 
  end 
  
  def add_item(title, price, quantity=1)
    @total += price*quantity  
  end 
end 
