require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ControlGym
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    I18n.available_locales = [:en, :es]
    config.i18n.default_locale = :es

    config.active_support.key_generator_hash_digest_class = OpenSSL::Digest::SHA1
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
     config.time_zone = "America/Mexico_City"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
