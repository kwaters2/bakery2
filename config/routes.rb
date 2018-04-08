Rails.application.routes.draw do
  
  
  resources :items
  root 'static_pages#home'


  get '/about', to: 'static_pages#about' 

  get '/contact', to: 'static_pages#contact'
  
  get '/items', to: 'items#items'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
