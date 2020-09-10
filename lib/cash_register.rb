require 'pry'

class CashRegister 
  attr_accessor :discount, :total, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @all_transactions = []
  end
  
  def add_item(title, price, quantity = 1) 
    @total = @total + price * quantity
    @total
    @all_transactions << price
    i = quantity 
    until i == 0 do 
    @items << title 
    i -= 1
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
 

 def void_last_transaction
   @all_transactions.pop
        if items.empty?
            self.total = 0.0
            binding.pry
        else
            self.total -= @all_transactions
        end
    end



end