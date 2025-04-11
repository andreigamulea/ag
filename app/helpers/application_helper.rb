module ApplicationHelper
  def cart_item_count
    # Verifică dacă suntem într-un context de controller și folosim current_order
    if respond_to?(:controller) && controller.respond_to?(:current_order)
      controller.current_order ? controller.current_order.line_items.count : 0
    else
      # Fallback: încearcă să găsești coșul curent din sesiune
      order = Spree::Order.find_by(id: session[:order_id]) if session[:order_id]
      order ? order.line_items.count : 0
    end
  end
end