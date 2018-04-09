Rails.application.routes.draw do

get '/checkout', to: 'cart#index' 
   
  get 'cart/index'

  resources :items
  root 'static_pages#home'


  get '/about', to: 'static_pages#about' 

  get '/contact', to: 'static_pages#contact'
  
  get '/items', to: 'items#items'
 
  get '/login', to: 'user#login'

  get '/logout', to: 'user#logout'

  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
   
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  root :to => 'site#home'

end

 
 