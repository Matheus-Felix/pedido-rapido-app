Rails.application.routes.draw do

  resources :categories, only: [:index,:update, :destroy, :show, :create]
  resources :orders, only: [:index,:update, :destroy, :show, :create]
  resources :products, only: [:index,:update, :destroy, :show, :create]
  resources :employees, only: [:index,:update, :destroy, :show, :create]
  resources :product_orders, only: [:index,:update, :destroy, :show, :create]
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
