Rails.application.routes.draw do
  resources :profiles
  resources :publishers
  devise_for :users
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :coupons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', via: [ :get, :post, :patch ]

  root "categories#index"

  post '/callback' => 'linebot#callback'
end
