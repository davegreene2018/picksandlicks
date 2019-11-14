class StaticPagesController < ApplicationController
  def home
  end

  def help
      current_user.update_attribute :admin, true
  end

  def about
  end
  
  def createOrder
 
   @orders = Order.all
          
  end
  
  def users
   
    @users = User.all
  end
  
  def upgrade_admin
        @user.update_attribute(:adminrole, true)
        redirect_to :action => :admin_users
  end
    
    def downgrade_admin
       @user.update_attribute(:adminrole, false)
         redirect_to :action => :admin_users
    end   

  
  def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end


end
