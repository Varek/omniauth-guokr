# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-guokr/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-guokr"
  spec.version       = Omniauth::Guokr::VERSION
  spec.authors       = ["Varek"]
  spec.email         = ["4ndr3r13ck@googlemail.com"]
  spec.summary       = 'Omniauth Strategy for Guokr'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
