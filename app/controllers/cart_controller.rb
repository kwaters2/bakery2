class CartController < ApplicationController  
  before_action :authenticate_user!
 
  def add 
    id = params[:id]
      if session[:cart] then
         cart = session[:cart]
       else
          session[:cart] = {}
         cart = session[:cart]
      end
       
       if cart[id] then
         cart[id] = cart[id] + 1
       else
         cart[id] = 1
       end 
    
    redirect_to :action => :index
    
  end
         
         
  def index
    
    # pass the cart information to the index view 
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
    
  end
  
  
  def remove
    
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    
    redirect_to :action => :index
  end
  
  def clearCart
     session[:cart] = nil
     redirect_to :action => :index
  end 
  
def createOrder
    
    # Step 1 : Get id of current user
    @user = User.find(current_user.id)
    
    # step 2: Create an order for the current user
    
    @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
    
    @order.save
    
    
    # Step 3: Create order with the current cart items
    
    @cart = session[:cart] || {} # Getting the content of the current cart
    
    @cart.each do | id, quantity |
      item = Item.find_by_id(id)
      
      @orderitem = @order.orderitems.build(:item_id => item.id, :title => item.name, :description => item.description, :quantity => quantity, :price => item.price)
    
    @orderitem.save
    end
     
     @orders = Order.all
     
     @orderitems = Orderitem.where(order_id: Order.last)
     
     # session[:cart] = nil #Hashed out for class demo
  end
    
  
  
  
  
  
  
end