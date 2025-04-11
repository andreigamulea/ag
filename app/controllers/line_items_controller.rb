module Spree
    class LineItemsController < Spree::StoreController
      before_action :load_order
      before_action :load_line_item, only: :destroy
  
      def destroy
        @line_item.destroy
        redirect_to cart_path, notice: "Produsul a fost șters din coș."
      end
  
      private
  
      def load_order
        @order = current_order || raise(ActiveRecord::RecordNotFound)
      end
  
      def load_line_item
        @line_item = @order.line_items.find(params[:id])
      end
    end
  end