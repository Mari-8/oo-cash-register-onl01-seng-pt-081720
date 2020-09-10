require 'pry'

class CashRegister 
  attr_accessor :discount, :total, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount 
  end
  
  def add_item(title, price, quantity = 1) 
    @total = @total + price * quantity
    @total
    @items = []
    i = 0
    if quantity > 1 
      while i < quantity
        @items << title * quantity[i]
      end
      i += 1 
    end
  end 
  
  def apply_discount 
     @total = @total - (@total * @discount / 100)
      if @discount != 0 
        "After the discount, the total comes to $#{@total}."
      else 
        "There is no discount to apply."
      end
    end 
    
 def items 
   @items
 end
  
  
  
end