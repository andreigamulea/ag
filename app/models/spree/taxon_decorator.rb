module Spree
    module TaxonDecorator
      def active_product_names
        products.where(deleted_at: nil).map(&:name).join(", ")
      end
    end
  end
  
  Spree::Taxon.prepend(Spree::TaxonDecorator)