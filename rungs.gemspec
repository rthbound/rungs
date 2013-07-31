# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rungs/version'

Gem::Specification.new do |spec|
  spec.name          = "rungs"
  spec.version       = Rungs::VERSION
  spec.authors       = ["Ryan T. Hosford"]
  spec.email         = ["tad.hosford@gmail.com"]
  spec.description   = %q{Gem for messing around with https://github.com/alexkroman/word-ladder }
  spec.summary       = %q{Gem for messing around with https://github.com/alexkroman/word-ladder }
  spec.homepage      = "https://github.com/rthbound/rungs"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "minitest"
  spec.add_runtime_dependency     "pay_dirt", '1.0.7'
end
