# app/controllers/spree/home_controller.rb
module Spree
  class HomeController < ApplicationController
    helper Spree::BaseHelper # Adaugă helper-ele Solidus pentru formatare (ex. number_to_currency)

    def index
      @products = Spree::Product.available # Încarcă doar produsele disponibile
      @cart = current_order(create_order_if_necessary: true) # Creează sau obține comanda curentă
    end

    def add_to_cart
      product = Spree::Product.find(params[:product_id])
      variant = product.master # Folosește varianta principală (puteți extinde pentru variante multiple)
      quantity = params[:quantity].to_i || 1

      @cart = current_order(create_order_if_necessary: true)
      # Creează un LineItem pentru a adăuga varianta în coș
      line_item = @cart.line_items.create!(
        variant: variant,
        quantity: quantity,
        price: variant.price
      )

      if line_item.persisted?
        # Recalculează totalul comenzii
        @cart.recalculate
        redirect_to main_app.cart_path, notice: "#{product.name} has been added to your cart!"
      else
        redirect_to main_app.store_path, alert: "Failed to add #{product.name} to your cart."
      end
    end

    def cart
      @cart = current_order(create_order_if_necessary: true)
      # Recalculează totalul comenzii
      @cart.recalculate
    end
    def remove_from_cart
      @order = current_order
      if @order
        line_item = @order.line_items.find(params[:id])
        line_item.destroy
        @order.recalculate # Recalculează totalurile comenzii
        respond_to do |format|
          format.json { render json: { success: true, order_total: @order.total.to_s }, status: :ok }
        end
      else
        respond_to do |format|
          format.json { render json: { success: false, error: 'Order not found' }, status: :not_found }
        end
      end
    rescue ActiveRecord::RecordNotFound
      respond_to do |format|
        format.json { render json: { success: false, error: 'Line item not found' }, status: :not_found }
      end
    end
    private

    # Obține comanda curentă din sesiune sau creează una nouă
    def current_order(create_order_if_necessary: false)
      order = session[:order_id] ? Spree::Order.find_by(id: session[:order_id]) : nil
      if order.nil? && create_order_if_necessary
        order = Spree::Order.create!(
          store: Spree::Store.default, # Setează magazinul implicit
          currency: Spree::Store.default.default_currency, # Setează moneda implicită
          user: nil, # Poți seta un utilizator dacă ai autentificare
          email: 'guest@example.com' # Setează un email temporar pentru comanda
        )
        session[:order_id] = order.id
      end
      order
    end
  end
end