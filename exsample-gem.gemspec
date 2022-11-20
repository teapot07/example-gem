# frozen_string_literal: true

require_relative "lib/exsample/gem/version"

Gem::Specification.new do |spec|
  spec.name = "exsample-gem"
  spec.version = Exsample::Gem::VERSION
  spec.authors = ["thipot"]
  spec.email = ["carpkei6972@gmail.com"]

  spec.summary = "テスト用のGemです"
  spec.description = "CIとCDのセットアップをする"
  spec.homepage = "https://github.com/thipot/example-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # This change allows us to push to rubygems.org
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/thipot/example-gem"
    spec.metadata["changelog_uri"] = "https://github.com/thipot/example-gem/releases"
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["README.md", "lib/**/*"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
