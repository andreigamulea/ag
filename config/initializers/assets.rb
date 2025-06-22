Rails.application.config.assets.configure do |env|
  env.unregister_preprocessor('text/css', Sprockets::SassCompressor)
end
