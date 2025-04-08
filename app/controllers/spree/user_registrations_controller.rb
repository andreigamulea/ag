# app/controllers/spree/user_registrations_controller.rb
module Spree
    class UserRegistrationsController < Devise::RegistrationsController
      before_action :configure_permitted_parameters, if: :devise_controller?
  
      # Redirecționează după sign-up
      def after_sign_up_path_for(resource)
        main_app.store_path # Redirecționează către /store după sign-up
      end
  
      # Redirecționează după actualizarea contului
      def after_update_path_for(resource)
        main_app.store_path # Redirecționează către /store după actualizare
      end
  
      private
  
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      end
    end
  end