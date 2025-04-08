Devise.setup do |config|
    # Alte configurații...
    config.scoped_views = true
  end
Devise.secret_key = SecureRandom.hex(50).inspect
