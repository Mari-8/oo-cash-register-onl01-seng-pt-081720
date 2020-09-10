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
    @items << title 
  end 
  
  def apply_discount 
     @total = @total - (@total * @discount / 100)
     "After the discount, the total comes to $#{@total}."
  end 
  
  
  
end