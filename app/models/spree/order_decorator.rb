# app/models/spree/order_decorator.rb
module Spree
    module OrderDecorator
      def self.prepended(base)
        base.attr_accessor :use_shipping_address_for_billing
      end
  
      def bill_address_attributes=(attributes)
        if use_shipping_address_for_billing == "1"
          super(ship_address.attributes.except("id", "created_at", "updated_at"))
        else
          super(attributes)
        end
      end
    end
  end
  
  Spree::Order.prepend(Spree::OrderDecorator)