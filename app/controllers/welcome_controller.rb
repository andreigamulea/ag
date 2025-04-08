# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Store
  include Spree::Core::ControllerHelpers::Order
    def index
      # Aici poți adăuga logică dacă dorești, de exemplu să aduci date pentru afișare
      @message = "Bine ai venit la aplicația mea cu Solidus!"
    end
  end