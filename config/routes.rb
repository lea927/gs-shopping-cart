Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/new'
  post 'orders/create'
  get 'orders/destroy'
  root 'products#index' 
  get '/products', to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
