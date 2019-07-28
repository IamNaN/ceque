$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "supportq/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "supportq"
  spec.version     = Supportq::VERSION
  spec.authors     = ["IamNaN"]
  spec.email       = ["dgerton@gmail.com"]
  spec.homepage    = 'https://github/IamNaN/supportq'
  spec.summary     = 'Mountable Live Support for your App'
  spec.description = 'Supportq is a mountable chat engine tailored for customer support.'
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'apparition'
  spec.add_development_dependency 'launchy'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'faker'
end
