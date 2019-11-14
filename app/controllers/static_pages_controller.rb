class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end
  
  def createOrder
 
   @orders = Order.all
          
  end

end
