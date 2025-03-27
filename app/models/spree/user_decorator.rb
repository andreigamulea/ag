# app/models/spree/user_decorator.rb
module Spree
    module UserDecorator
      # Suprascrie metoda password_required? pentru a face parola opțională la actualizare
      def password_required?
        # Parola este necesară doar dacă este o înregistrare nouă sau dacă parola este modificată
        new_record? || (password.present? && password_confirmation.present?)
      end
  
      # Suprascrie metoda de validare a parolei
      def validate_password
        # Nu validăm parola dacă câmpurile sunt goale
        return unless password.present? || password_confirmation.present?
        super
      end
  
      # Suprascrie metoda de actualizare pentru a ignora câmpurile goale
      def update(attributes)
        # Eliminăm câmpurile password și password_confirmation din parametri dacă sunt goale
        attributes = attributes.except(:password, :password_confirmation) if attributes[:password].blank? && attributes[:password_confirmation].blank?
        super(attributes)
      end
    end
  end
  
  Spree::User.prepend(Spree::UserDecorator)