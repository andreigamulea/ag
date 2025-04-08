# app/controllers/spree/user_passwords_controller.rb
module Spree
  class UserPasswordsController < Devise::PasswordsController
    # Redirecționează după trimiterea instrucțiunilor de resetare a parolei
    def after_sending_reset_password_instructions_path_for(resource_name)
      main_app.root_path # Redirecționează către rădăcina aplicației (/)
    end
  end
end