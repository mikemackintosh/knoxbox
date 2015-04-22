# Created by hand, like a real man
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knoxbox/version'

Gem::Specification.new do |s|
  s.name        = 'knoxbox'
  s.version     = KnoxBox::VERSION
  s.date        = '2015-04-20'
  s.summary     = 'KnoxBox'
  s.description = 'OpenVPN management tool'
  s.authors     = ['Mike Mackintosh']
  s.email       = 'm@zyp.io'
  s.homepage    =
    'http://github.com/mikemackintosh/knoxbox'

  s.license       = 'MIT'

  s.require_paths = ['lib']
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency 'easyrsa'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
end
