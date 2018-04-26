class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def about
  end

  def contact
  end


  def category
    catName = params[:title]
      
    @items = Item.where("category like ?", catName)
    
    @categoryName = catName # to make global for category page
   
  end
  
  
  def paid
    flash[:notice]='Transaction Complets' 
    @order= Order.last
    @order.update_attribute(:status, "Paid by USer: #{current_user.email}")
    session[:cart] = nil
  end  
end