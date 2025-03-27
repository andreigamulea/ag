Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root 'welcome#index'

  get '/store', to: 'spree/home#index', as: :store
  post '/store/add_to_cart', to: 'spree/home#add_to_cart', as: :add_to_cart
  get '/store/cart', to: 'spree/home#cart', as: :cart

  mount Spree::Core::Engine, at: '/store'
  mount SolidusStripe::Engine, at: '/solidus_stripe'
  mount SolidusAdmin::Engine, at: '/store/admin'
end

Spree::Core::Engine.routes.draw do
  devise_for :spree_user,
             class_name: 'Spree::User',
             module: :devise,
             controllers: {
               sessions: 'spree/user_sessions',
               registrations: 'spree/user_registrations',
               passwords: 'spree/user_passwords',
               confirmations: 'spree/user_confirmations',
               unlocks: 'spree/user_unlocks'
             },
             path: 'users',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               sign_up: 'signup'
             }
end