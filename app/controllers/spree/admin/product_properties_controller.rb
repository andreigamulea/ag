module Spree
    module Admin
      class ProductPropertiesController < ResourceController
        include Spree::Admin::BaseHelper
        before_action :load_product
  
        def new
          @product_property = @product.product_properties.build
        end
  
        def create
          @product_property = @product.product_properties.build(product_property_params)
         if @product_property.save
          redirect_to spree.admin_product_product_properties_path(@product), notice: "Proprietatea produsului a fost creată cu succes."
        else
            render :new
          end
        end
  
        def index
          @product_properties = @product.product_properties
          @resource = @product
        end
  
        private
  
        def load_product
          @product = Spree::Product.friendly.find(params[:product_id])
        end
  
        def product_property_params
          params.require(:product_property).permit(:property_name, :value)
        end
      end
    end
  end