Rails.application.routes.draw do
  resources :profiles
  resources :publishers
  devise_for :users
  resources :categories
  resources :selected_categories
  resources :clipped_coupons
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :coupons
  post '/callback' => 'linebot#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', via: [ :get, :post, :patch ]
  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  root "coupons#index"
end
