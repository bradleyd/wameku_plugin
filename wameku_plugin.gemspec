# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wameku_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "wameku_plugin"
  spec.version       = WamekuPlugin::VERSION
  spec.authors       = ["Brad Smith"]
  spec.email         = ["bradleydsmith@gmail.com"]
  spec.description   = %q{ a plugin base for all plugins to inherit }
  spec.summary       = %q{a plugin base for all plugins to inherit }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
