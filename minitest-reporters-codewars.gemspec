# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "minitest-reporters-codewars"
  spec.version       = "0.1.0"
  spec.authors       = ["kazk"]
  spec.email         = [""]

  spec.summary       = "Minitest reporter for Codewars"
  spec.description   = "Minitest reporter for Codewars"
  spec.homepage      = "https://github.com/codewars/minitest-reporters-codewars"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/codewars/minitest-reporters-codewars"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = [
    "README.md",
    "LICENSE",
    "lib/minitest/reporters/codewars.rb"
  ]
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", ">= 5.0"
  spec.add_dependency "minitest-reporters", "~> 1.4.3"

  spec.add_development_dependency "rake"
end
