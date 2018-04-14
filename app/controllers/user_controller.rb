class UserController < ApplicationController
    
    
    def login
      session[:login] = 1 
      flash[:notice] = "Hello, welcome to the online bakery!"
      redirect_to :controller => :items
    end
    
    
    def logout
       session[:login] = nil
       flash[:notice] = "Goodbye!"
       redirect_to :controller => :items
       session[:cart] = nil
    end
    
    
    
end
