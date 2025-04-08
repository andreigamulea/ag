module Spree
    module Admin
      class StoresController < ResourceController
        include Spree::Admin::BaseHelper
  
        def edit
          @store = Spree::Store.find(params[:id])
          @resource = @store # Asigură-te că @resource este setat
        end
  
        def update
          @store = Spree::Store.find(params[:id])
          @resource = @store
          if @store.update(store_params)
            redirect_to spree.admin_stores_path, notice: t(:successfully_updated, resource: t(:store))
          else
            render :edit
          end
        end
  
        private
  
        def store_params
          params.require(:store).permit(:name, :url, :mail_from_address, :default_currency, :supported_currencies)
        end
      end
    end
  end