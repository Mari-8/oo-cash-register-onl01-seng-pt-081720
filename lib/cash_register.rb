require 'pry'

class CashRegister 
  attr_accessor :discount, :total, :price, :quantity, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @last_transaction = nil
  end
  
  def add_item(title, price, quantity = 1) 
    @total = @total + price * quantity
    @total
    i = quantity 
    until i == 0 do 
    @items << title 
    i -= 1
    end
   @last_transaction = price
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
 

 def void_last_transaction 
   voided = @total - @last_transaction
   binding.pry
   @items.pop
   voided
 end
  
end