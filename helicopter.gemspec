# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helicopter/version'

Gem::Specification.new do |spec|
  spec.name          = "helicopter"
  spec.version       = Helicopter::VERSION
  spec.authors       = ["Andrew Mason"]
  spec.email         = ["mason@case.edu"]

  spec.summary       = "Helicopter allows a class to keep track of its children."
  spec.homepage      = "https://github.com/ajm188/helicopter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
end
