class CartController < ApplicationController
    include Spree::Core::ControllerHelpers::Auth
    include Spree::Core::ControllerHelpers::Store
    include Spree::Core::ControllerHelpers::Order
  
    def add_to_cart
      @order = spree_current_order(create_if_necessary: true)
      @variant = Spree::Variant.find(params[:product_id])
      @quantity = params[:quantity].to_i
      @order.contents.add(@variant, @quantity)
  
      # Asigură-te că sesiunea este actualizată cu ID-ul coșului și guest_token
      if @order.persisted?
        session[:order_id] = @order.id
        cookies.permanent[:guest_token] = @order.guest_token
      end
  
      redirect_to cart_path, notice: "Produsul a fost adăugat în coș!"
    end
  end