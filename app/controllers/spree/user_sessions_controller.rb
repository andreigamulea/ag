module Spree
  class UserSessionsController < Devise::SessionsController
    skip_before_action :verify_authenticity_token, only: [:create, :new]
    before_action :verify_csrf_token_manually, only: [:create, :new]

    def create
      Rails.logger.info "CSRF Token from params: #{params[:authenticity_token]}"
      Rails.logger.info "CSRF Token from session: #{session[:_csrf_token]}"
      Rails.logger.info "Params sent to Warden: #{params[:spree_user]}"
      super
    end

    def new
      Rails.logger.info "CSRF Token from params (new): #{params[:authenticity_token]}"
      Rails.logger.info "CSRF Token from session (new): #{session[:_csrf_token]}"
      super
    end

    private

    def verify_csrf_token_manually
      if params[:authenticity_token].present? && session[:_csrf_token].present?
        unless params[:authenticity_token] == session[:_csrf_token]
          Rails.logger.info "CSRF Token mismatch - syncing: #{params[:authenticity_token]}"
          session[:_csrf_token] = params[:authenticity_token]
        end
      else
        session[:_csrf_token] ||= form_authenticity_token
        Rails.logger.info "CSRF Token initialized: #{session[:_csrf_token]}"
      end
    end

    def after_sign_in_path_for(resource)
      main_app.root_path
    end

    def after_sign_out_path_for(resource)
      main_app.root_path
    end
  end
end