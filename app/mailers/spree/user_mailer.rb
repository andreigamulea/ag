# app/mailers/spree/user_mailer.rb
module Spree
    class UserMailer < ApplicationMailer
      def reset_password_instructions(user, token, opts = {})
        @resource = user
        @token = token
        mail(to: user.email, subject: "Reset password instructions")
      end
    end
  end