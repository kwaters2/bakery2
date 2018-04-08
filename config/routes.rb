Rails.application.routes.draw do
<<<<<<< HEAD
=======
  
get '/checkout', to: 'cart#index' 
   
  get 'cart/index'
>>>>>>> 96be3a5d9a7544a6a19ae213dc8841f0d63508d2

  resources :items
  root 'static_pages#home'


  get '/about', to: 'static_pages#about' 

  get '/contact', to: 'static_pages#contact'
  
  get '/items', to: 'items#items'
  
<<<<<<< HEAD

  get '/login', to: 'user#login'

  get '/logout', to: 'user#logout'
=======
  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
   
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  root :to => 'site#home'
>>>>>>> 96be3a5d9a7544a6a19ae213dc8841f0d63508d2
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 
 