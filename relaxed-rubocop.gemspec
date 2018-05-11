# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "relaxed-rubocop"
  gem.version       = "2.3"
  gem.summary       = "A relaxed style guide for RuboCop"
  gem.description   = "A relaxed style guide for RuboCop. Although RuboCop is an amazing tool, some of its default rules feel overly strict. This might distract you from the helpful messages."
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/relaxed-rubocop"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^(?:pkg|build)/ }
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
end
