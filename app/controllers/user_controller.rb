class UserController < ApplicationController
  
  def login
    session[:login] = 1 
    flash[:notice] = "Welcome!"
    redirect_to :controller => :items 
    end


  def logout
    session[:login] = nil
    flash[:notice] = "Goodbye, See you soon!"
    redirect_to :controller => :items 
  end

end