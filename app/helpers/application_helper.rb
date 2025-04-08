# app/helpers/application_helper.rb
module ApplicationHelper
    def cart_item_count
      if defined?(current_order) && current_order
        current_order.line_items.count
      else
        0
      end
    end
  end