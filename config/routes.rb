Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root 'welcome#index'

  # Rute pentru frontend-ul personalizat (trebuie să fie înainte de mount Spree::Core::Engine)
  get '/store', to: 'spree/home#index', as: :store
  post '/store/add_to_cart', to: 'spree/home#add_to_cart', as: :add_to_cart
  get '/store/cart', to: 'spree/home#cart', as: :cart

  # Montează Solidus la /store pentru frontend
  mount Spree::Core::Engine, at: '/store'

  # Montează SolidusStripe
  mount SolidusStripe::Engine, at: '/solidus_stripe'

  # Ruta pentru interfața admin
  mount SolidusAdmin::Engine, at: '/store/admin', constraints: ->(req) {
    req.cookies['solidus_admin'] != 'false' &&
    req.params['solidus_admin'] != 'false'
  }
end