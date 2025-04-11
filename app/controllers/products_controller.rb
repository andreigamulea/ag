class ProductsController < ApplicationController
    def show
      @product = Spree::Product.friendly.find(params[:slug])
      unless @product
        flash[:error] = "Produsul nu a fost găsit."
        redirect_to carti_index_path
      end
    end
  end