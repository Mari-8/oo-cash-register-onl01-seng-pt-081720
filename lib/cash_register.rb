require 'pry'

class CashRegister 
  attr_accessor :discount, :total, :price, :quantity 
  
  def initialize(discount = 0)
    @total = 0
    @items = {}
    @discount = discount 
  end
  
  def add_item(title, price, quantity = 1) 
    @total = @total + price 
    @items = @items[title => price]
  end 
  
end