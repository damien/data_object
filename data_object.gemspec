# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_object/version'

Gem::Specification.new do |spec|
  spec.name          = 'data_object'
  spec.version       = DataObject::VERSION
  spec.authors       = ['Damien Wilson']
  spec.email         = ['damien@mindglob.com']

  spec.summary       = 'Simple, immutable data wrapper'
  spec.description   = ''
  spec.homepage      = 'https://github.com/damien/data_object'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
