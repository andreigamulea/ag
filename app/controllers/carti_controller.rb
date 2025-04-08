class CartiController < ApplicationController
    def index
      taxon = Spree::Taxon.find_by(name: "Carti")
      if taxon
        @products = Spree::Product.where(id: taxon.product_ids).available
      else
        @products = []
        flash[:alert] = "Categoria 'Carti' nu a fost găsită."
      end
    end
  end