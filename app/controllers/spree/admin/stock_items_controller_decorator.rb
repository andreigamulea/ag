module Spree
  module Admin
    module StockItemsControllerDecorator
      Spree::Admin::StockItemsController.class_eval do
        before_action :load_product, only: :index, if: -> { params[:product_id].present? }
        def index
            if @product
              @stock_items = @product.stock_items.order(:id)
              @resource = @product
            else
              @stock_items = Spree::StockItem.all.order(:id)
              @resource = nil
            end
          end

        def update
          @stock_item = @product.stock_items.find(params[:id])
          Rails.logger.info "Params received: #{params.inspect}"
          adjustment = params.dig(:stock_item, :count_on_hand).to_i

          if adjustment != 0
            @stock_item.adjust_count_on_hand(adjustment)
            redirect_to stock_admin_product_path(@product), notice: I18n.t('spree.admin.stock_items.update.success')
          else
            redirect_to stock_admin_product_path(@product), alert: "No adjustment value provided."
          end
        rescue StandardError => e
          redirect_to stock_admin_product_path(@product), alert: "Failed to update stock: #{e.message}"
        end
      end
    end
  end
end