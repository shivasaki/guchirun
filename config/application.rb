require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Guchirun
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

require 'yaml'

if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.7.0') && defined?(Psych::Parser) && Psych::Parser.const_defined?('ALIASES')
  Psych::Parser::ALIASES.each do |key, value|
    Psych::Parser::ALIASES[key] = value.reject { |v| v == 'tag:yaml.org,2002:float' }
  end
end
