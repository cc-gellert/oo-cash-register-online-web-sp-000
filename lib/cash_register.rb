class CashRegister 
  attr_accessor :total, :items, :discount   
  def initialize(emplDisc=0)
    @total = 0 
    @items = [] 
    @discount = emplDisc 
  end 
  
  def add_item(title, price, quantity=1)
    @total += price*quantity 
    quantity.times do 
      @items << title 
    end 
  end 
  
  def apply_discount
    if(emplDisc == 0)
      puts "There is no discount to apply."
    else 
      @total*=((100 - @discount)*0.01)
      puts "After the discount, the total comes to $#{@total}"
    end 
  end 
  
  def items 
    @items  
  end 
  
  def void_last_transaction
    @items.pop 
    @items 
  end 
end 
