# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iseeyou/version'

Gem::Specification.new do |spec|
  spec.name          = "iseeyou"
  spec.version       = ISeeYou::VERSION
  spec.authors       = ["ScorpiusZ"]
  spec.email         = 'scorpiuszjj@gmail.com'
  spec.summary       = "GeekPark spam classifier"
  spec.description   = "GeekPark conment spam classifier interface"
  spec.homepage      = "https://github.com/ScorpiusZ/iSeeYou-ruby"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
end
