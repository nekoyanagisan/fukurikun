require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fukurikun
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #activeadminの依存を防ぐhttp://suka4.blogspot.com/2015/05/railsinheritedresourcesbase.html
    config.app_generators.scaffold_controller = :scaffold_controller

    #おまじない開始
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    #おまじない終わり
  end
end
