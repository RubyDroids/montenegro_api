require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MontenegroApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.encoding = "utf-8"
    config.i18n.default_locale = :en
    config.i18n.locale = :en
    config.i18n.available_locales = [:es, :en]
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{yml}')]
    config.i18n.fallbacks = false
    
    config.autoload_paths += Dir[Rails.root.join('app', 'classes', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'controllers', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'serializers', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'adapters', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'services', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'presenters', '{**}', '*.{rb}')]
    config.autoload_paths += Dir[Rails.root.join('app', 'workers', '{**}', '*.{rb}')]
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
