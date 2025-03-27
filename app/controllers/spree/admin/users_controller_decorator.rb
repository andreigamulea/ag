module Spree
    module Admin
      class UsersControllerDecorator < ApplicationController
        Rails.logger.info "Loading Spree::Admin::UsersController decorator"
  
        Spree::Admin::UsersController.class_eval do
          def user_params
            Rails.logger.info "Decorator applied: Permitting name and spree_role_ids"
            params.require(:user).permit(:email, :password, :password_confirmation, :name, spree_role_ids: [])
          end
  
          def update
            Rails.logger.info "User params: #{user_params.inspect}"
            super
            Rails.logger.info "User after update: #{@user.inspect}"
          end
        end
      end
    end
  end