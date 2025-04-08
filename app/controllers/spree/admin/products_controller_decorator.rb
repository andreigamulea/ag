module Spree
    module Admin
      module ProductsControllerDecorator
        Rails.logger.info "Loading Spree::Admin::ProductsController decorator"
  
        Spree::Admin::ProductsController.class_eval do
          def new
            @product = Spree::Product.new
            @resource = @product
            Rails.logger.info "ProductsController#new called, resource: #{@resource.inspect}"
          end
  
          def edit
            @product = Spree::Product.friendly.find(params[:id])
            @resource = @product
            Rails.logger.info "ProductsController#edit called, resource: #{@resource.inspect}"
          end
  
          def create
            @product = Spree::Product.new(product_params)
            @resource = @product
            Rails.logger.info "ProductsController#create called, params: #{product_params.inspect}"
            if @product.save
              Rails.logger.info "Product saved successfully: #{@product.inspect}"
              redirect_to edit_admin_product_path(@product), notice: "Product created successfully!"
            else
              Rails.logger.info "Product failed to save: #{@product.errors.full_messages.inspect}"
              render :new
            end
          end
  
          private
  
          def product_params
            params.require(:product).permit(:name, :price, :description, :sku, :available_on, :shipping_category_id, :tax_category_id)
          end
        end
      end
    end
  end