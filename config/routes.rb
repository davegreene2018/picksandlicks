Rails.application.routes.draw do
  
  devise_for :users
  get 'cart/index'

  resources :items
  root :to => 'static_pages#home'

  get '/help' => 'static_pages#help'

  get '/about' => 'static_pages#about'
  
  get '/login' => 'user#login'
  
  get '/logout' => 'user#logout'
  
  get '/cart', to: 'cart#index'
  
  get '/cart/:id', to: 'cart#add'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/cart/decrease/:id' => 'cart#decrease'
  
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
