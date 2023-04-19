# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elected/version'

Gem::Specification.new do |spec|
  spec.name          = "elected"
  spec.version       = Elected::VERSION
  spec.authors       = ['Adrian Madrid']
  spec.email         = ['aemadrid@gmail.com']

  spec.summary       = %q{Select and keep a leader through Redis locks.}
  spec.description   = %q{Select a leader through a Redis lock and keep it for a time.}
  spec.homepage      = "https://github.com/simple-finance/elected"
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb', 'bin/*', '[A-Z]*', 'elected.gemspec']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'redlock'
  spec.add_dependency 'concurrent-ruby'
  spec.add_dependency 'pry'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'timecop'
end
