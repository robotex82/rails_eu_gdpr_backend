if RUBY_VERSION < '2.0.0'
  $:.push File.expand_path("../lib", __FILE__)
else
  $:.push File.expand_path("lib", __dir__)
end
# Maintain your gem's version:
require "eu_gdpr/backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_eu_gdpr_backend"
  s.version     = EuGdpr::Backend::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/rails_eu_gdpr_backend"
  s.summary     = "EuGdpr::Backend Module."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,spec}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.2.0"
  s.add_dependency "rao-component"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "capybara"
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rails-i18n'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
end
