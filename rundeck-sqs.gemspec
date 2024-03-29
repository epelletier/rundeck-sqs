# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rundeck/sqs/version'

Gem::Specification.new do |spec|
  spec.name          = "rundeck-sqs"
  spec.version       = Rundeck::Sqs::VERSION
  spec.authors       = ["Etienne Pelletier"]
  spec.email         = ["etienne.pelletier@bazaarvoice.com"]
  spec.summary       = %q{Write a short summary. Required.}
  spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'aws-sdk'
  spec.add_runtime_dependency 'rundeck-ruby'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
