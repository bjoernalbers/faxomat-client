# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faxomat/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'faxomat-client'
  spec.version       = Faxomat::Client::VERSION
  spec.authors       = ['Björn Albers']
  spec.email         = ['bjoernalbers@gmail.com']
  spec.summary       = "#{spec.name}-#{spec.version}"
  spec.description   = 'Client for Faxomat HTTP API'
  spec.homepage      = 'https://github.com/bjoernalbers/faxomat-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
