# app/controllers/spree/checkout_controller.rb
module Spree
    class CheckoutController < Spree::BaseController
      helper Spree::BaseHelper
  
      layout 'application'
  
      before_action :load_order, only: [:edit, :update]
  
      def edit
        @order = current_order
        if @order.nil? || !@order.line_items.any?
          redirect_to main_app.cart_path, alert: "Please add items to your cart before proceeding to checkout."
        elsif @order.state == 'cart'
          # Forțează comanda să treacă la starea 'address'
          @order.state = 'address'
          unless @order.save
            flash[:error] = @order.errors.full_messages.to_sentence
            redirect_to main_app.cart_path
            return
          end
        end
  
        # Creează ship_address și bill_address temporar pentru afișare, fără a le salva
        @order.ship_address ||= Spree::Address.new
        @order.bill_address ||= Spree::Address.new
      end
  
      def update
        @order = current_order
        if @order.update_from_params(params, permitted_checkout_attributes)
          if @order.next
            if @order.completed?
              session[:order_id] = nil # Resetează sesiunea după finalizare
              redirect_to completion_route, notice: "Order completed successfully!"
            else
              redirect_to main_app.checkout_state_path(@order.state)
            end
          else
            flash.now[:error] = @order.errors.full_messages.to_sentence
            render :edit
          end
        else
          flash.now[:error] = @order.errors.full_messages.to_sentence
          render :edit
        end
      end
  
      private
  
      def load_order
        @order = current_order
        redirect_to main_app.cart_path, alert: "No active order found." unless @order
      end
  
      def current_order
        order = session[:order_id] ? Spree::Order.find_by(id: session[:order_id]) : nil
        redirect_to main_app.cart_path, alert: "No active order found." unless order
        order
      end
  
      def completion_route
        order_path(@order)
      end
  
      def permitted_checkout_attributes
        Spree::PermittedAttributes.checkout_attributes + [:use_shipping_address_for_billing]
      end
    end
  end