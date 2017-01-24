# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/berkshelf/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-berkshelf"
  spec.version       = Guard::Berkshelf::VERSION
  spec.authors       = ["Brandon Raabe"]
  spec.email         = ["brandon.raabe@ge.com"]

  spec.summary       = %q{A guard plugin for Berkshelf.}
  spec.description   = %q{A simple guard plugin to update Berkshelf.}
  spec.homepage      = "https://github.com/brandocorp/guard-berkshelf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'guard-compat', '~> 1.1'
  spec.add_dependency 'berkshelf'
end
