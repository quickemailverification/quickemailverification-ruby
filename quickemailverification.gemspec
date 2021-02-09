# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = "quickemailverification"
  gem.version     = "1.0.3"
  gem.description = "Official QuickEmailVerification API library client for ruby."
  gem.summary     = "Official QuickEmailVerification API library client for ruby"

  gem.author   = "QuickEmailVerification"
  gem.email    = "support@quickemailverification.com"
  gem.homepage = "https://quickemailverification.com"
  gem.license  = "MIT"

  gem.require_paths = ['lib']

  gem.files = Dir["lib/**/*"]

  gem.add_dependency "faraday", "~> 1.0"
  gem.add_dependency "json", "~> 2.5"
end
