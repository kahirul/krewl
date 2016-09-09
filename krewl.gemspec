# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'krewl/version'

Gem::Specification.new do |spec|
  spec.name          = 'krewl'
  spec.version       = Krewl::VERSION
  spec.authors       = ['Khairul']
  spec.email         = ['kyu.helf@gmail.com']

  spec.summary       = 'Krewl'
  spec.description   = 'Krewl'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib'.freeze]

  spec.add_dependency 'thor'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
