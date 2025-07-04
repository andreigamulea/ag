# Configure Solidus Preferences
# See http://docs.solidus.io/Spree/AppConfiguration.html for details

# Solidus version defaults for preferences that are not overridden
Spree.load_defaults '4.3.6'
# config/initializers/spree.rb
Rails.application.config.to_prepare do
  Dir.glob(Rails.root.join('app/models/spree/**/*_decorator*.rb')).each do |decorator|
    require decorator
  end
end
Spree.config do |config|
  # Core:
  # Default currency for new sites
  Spree.config do |config|
    config.currency = "RON" # Or your preferred currency
  end
# Configurează formatarea monedei pentru RON
Money::Currency.register({
  priority: 1,
  iso_code: "RON",
  name: "Romanian Leu",
  symbol: "lei",
  disambiguate_symbol: "RON",
  subunit: "Ban",
  subunit_to_unit: 100,
  symbol_first: false,
  thousands_separator: ".",
  decimal_mark: ","
})

# Actualizează formatarea implicită pentru Money
Money.default_currency = Money::Currency.new("RON")
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false

  # When set, product caches are only invalidated when they fall below or rise
  # above the inventory_cache_threshold that is set. Default is to invalidate cache on
  # any inventory changes.
  # config.inventory_cache_threshold = 3

  # Configure adapter for attachments on products and taxons (use ActiveStorageAttachment or PaperclipAttachment)
  config.image_attachment_module = 'Spree::Image::ActiveStorageAttachment'
  config.taxon_attachment_module = 'Spree::Taxon::ActiveStorageAttachment'

  # Defaults
  # Permission Sets:

  # Uncomment and customize the following line to add custom permission sets
  # to a custom users role:
  # config.roles.assign_permissions :role_name, ['Spree::PermissionSets::CustomPermissionSet']

  # Admin:

  # Custom logo for the admin
  # config.admin_interface_logo = "logo/solidus.svg"

  # Payment gateway credentials can be configured statically here and referenced from
  # the admin. They can also be fully configured from the admin.
  #
  # Please note that the example below requires the `solidus_stripe` ~> 5.0 gem
  # in order to work properly (see https://github.com/solidusio-contrib/solidus_stripe).
  #
  # config.static_model_preferences.add(
  #   'SolidusStripe::PaymentMethod',
  #   'solidus_stripe_env_credentials',
  #   api_key: ENV.fetch('SOLIDUS_STRIPE_API_KEY'),
  #   publishable_key: ENV.fetch('SOLIDUS_STRIPE_PUBLISHABLE_KEY'),
  #   test_mode: ENV.fetch('SOLIDUS_STRIPE_API_KEY').start_with?('sk_test_'),
  #   webhook_endpoint_signing_secret: ENV.fetch('SOLIDUS_STRIPE_WEBHOOK_SIGNING_SECRET')
  # )
end

Spree::Backend::Config.configure do |config|
  config.locale = 'en'

  # Uncomment and change the following configuration if you want to add
  # a new menu item:
  #
  # config.menu_items << config.class::MenuItem.new(
  #   label: :my_reports,
  #   icon: 'file-text-o', # see https://fontawesome.com/v4/icons/
  #   url: :my_admin_reports_path,
  #   condition: -> { can?(:admin, MyReports) },
  #   partial: 'spree/admin/shared/my_reports_sub_menu',
  #   match_path: '/reports',
  # )

  # Custom frontend product path
  #
  # config.frontend_product_path = ->(template_context, product) {
  #   template_context.spree.product_path(product)
  # }
end

Spree::Api::Config.configure do |config|
  config.requires_authentication = true
end


# Rules for avoiding to store the current path into session for redirects
# When at least one rule is matched, the request path will not be stored
# in session.
# You can add your custom rules by uncommenting this line and changing
# the class name:
#
# Spree::UserLastUrlStorer.rules << 'Spree::UserLastUrlStorer::Rules::AuthenticationRule'
