# app/controllers/spree/admin/users_controller.rb
module Spree
    module Admin
      class UsersController < Spree::Admin::ResourceController
        # Asigurăm că helper-ul Spree::BaseHelper este inclus
        helper Spree::BaseHelper
  
        def update
          if @user.update(user_params)
            flash[:success] = t('spree.account_updated')
            redirect_to spree.admin_users_path
          else
            render :edit
          end
        end
  
        private
  
        def user_params
          params.require(:user).permit(:email, :password, :password_confirmation, spree_role_ids: [])
        end
      end
    end
  end