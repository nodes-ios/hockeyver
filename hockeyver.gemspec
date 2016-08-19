# coding: utf-8

Gem::Specification.new do |spec|
  spec.add_dependency 'httparty', '~> 0.14'
  spec.add_dependency 'json', '~> 1.7'
  spec.add_dependency 'slop', '~> 4.4'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.files   = ["lib/hockeyver.rb"]
  spec.authors = ['Kasper Welner']
  spec.description = %q{Outputs the version number of the latest build on Hockey based on the provided Hockey ID and token.}
  spec.email = ['iphone@nodes.dk']
  spec.name = 'hockeyver'
  spec.required_ruby_version = '>= 1.9.3'
  spec.summary = %q{Outputs the version number of of latest build on Hockey}
  spec.version = '0.1.3'
  spec.homepage   ='http://nodes.dk'
  spec.license     = 'MIT'
  spec.executables << 'hockeyver'
end
