Rails.application.config.to_prepare do
    Dir.glob(Rails.root.join('app/controllers/spree/admin/**/*_decorator*.rb')).each do |decorator|
      Rails.logger.info "Loading decorator: #{decorator}"
      require_dependency decorator
    end
  end