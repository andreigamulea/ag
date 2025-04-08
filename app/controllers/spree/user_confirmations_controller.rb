module Spree
    class UserConfirmationsController < Devise::ConfirmationsController
      # Redirecționează după confirmarea contului
      def after_confirmation_path_for(resource_name, resource)
        store_path # Redirecționează către /store după confirmare
      end
    end
  end