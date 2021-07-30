# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: 'manager', path_names: { sign_in: 'login',
                                                    sign_out: 'logout',
                                                    password: 'secret',
                                                    confirmation: 'verification',
                                                    unlock: 'unblock',
                                                    registration: 'register' }

  resources :categories, only: %i[index update destroy show create]
  resources :orders, only: %i[index update destroy show create]
  resources :products, only: %i[index update destroy show create]
  resources :employees, only: %i[index update destroy show create]
  resources :product_orders, only: %i[index update destroy show create]

  namespace :manager do
    get '/' => 'managers#index'
  end

  root to: 'home#index'
end
