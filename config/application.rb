require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ag
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.i18n.default_locale = :ro
   
     # Dezactivează precompilarea JavaScript prin Sprockets
    config.assets.paths.delete(Rails.root.join('app', 'assets', 'javascripts'))
    config.assets.paths.delete(Rails.root.join('app', 'assets', 'builds'))

    # Dezactivează Sprockets pentru JavaScript
    config.assets.precompile.delete_if { |asset| asset =~ /\.js$/ }
    config.assets.paths.delete_if { |path| path.to_s.end_with?('builds') }
  end
end
