module Spree
    class UserUnlocksController < Devise::UnlocksController
      # Redirecționează după trimiterea instrucțiunilor de deblocare
      def after_sending_unlock_instructions_path_for(resource)
        root_path # Redirecționează către rădăcina aplicației
      end
    end
  end