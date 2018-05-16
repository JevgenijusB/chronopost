# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'chronopost/version'

Gem::Specification.new do |spec|
  spec.name = 'chronopost'
  spec.version = Chronopost::VERSION

  spec.authors = ['Žilvinas Verseckas']
  spec.email = ['zilvinas.verseckas@vinted.com']

  spec.summary = 'Chronopost client'
  spec.description = 'An interface for the Chronopost Web Service'
  spec.homepage = 'https://github.com/vinted/chronopost'
  spec.required_ruby_version = '~> 2.0'

  spec.license = 'MIT'

  spec.files =
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport', '~> 5.1', '>= 5.1.2'
  spec.add_runtime_dependency 'interactor-initializer', '~> 0.1'
  spec.add_runtime_dependency 'savon', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'coveralls', '~> 0.8.15'
  spec.add_development_dependency 'factory_bot', '~> 4.8'
  spec.add_development_dependency 'pronto', '~> 0.9'
  spec.add_development_dependency 'pronto-flay'
  spec.add_development_dependency 'pronto-rubocop'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'redcarpet', '~> 3.4'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'webmock', '~> 3.3'
  spec.add_development_dependency 'yard', '~> 0.9'
end
