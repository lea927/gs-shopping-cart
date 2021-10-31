Rails.application.routes.draw do
  get '/cart', to: 'orders#index'
  root 'products#index' 
  get '/products', to: 'products#index'
  resources :orders, only: [:create, :destroy, :new, :show]
end
