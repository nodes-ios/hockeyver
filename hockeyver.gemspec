# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hockeyver/version'

Gem::Specification.new do |spec|
  spec.add_runtime_dependency 'httparty', '~> 0.14'
  spec.add_runtime_dependency 'json', '~> 1.7'

  spec.add_development_dependency 'bundler', '~> 1.0'

  spec.required_ruby_version = '>= 1.9.3'

  spec.files        = ["lib/hockeyver.rb", "lib/hockeyver/version.rb"]
  spec.authors      = ['Kasper Welner', 'Dominik Hadl']
  spec.description  = %q{Outputs the version number of the latest build on Hockey based on the provided Hockey ID and token.}
  spec.email        = ['iphone@nodes.dk']
  spec.name         = 'hockeyver'
  spec.summary      = %q{Outputs the version number of of latest build on Hockey}
  spec.version      = HockeyVer::VERSION
  spec.homepage     ='http://nodes.dk'
  spec.license      = 'MIT'
  spec.executables << 'hockeyver'
end
