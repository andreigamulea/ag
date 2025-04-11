Rails.application.routes.draw do
get '/products/:slug', to: 'products#show', as: :product


  get "up" => "rails/health#show", as: :rails_health_check

  root 'welcome#index'
  get '/carti/index', to: 'carti#index'

  get '/store', to: 'spree/home#index', as: :store
  post '/store/add_to_cart', to: 'spree/home#add_to_cart', as: :add_to_cart
  get '/store/cart', to: 'spree/home#cart', as: :cart
  get '/checkout', to: 'spree/checkout#edit', as: :checkout
  patch '/checkout', to: 'spree/checkout#update'
  get '/checkout/:state', to: 'spree/checkout#edit', as: :checkout_state
  get '/order/:id', to: 'spree/orders#show', as: :order

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
             delete '/cart/remove/:id', to: 'home#remove_from_cart', as: :remove_from_cart
end