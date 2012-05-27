$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/bitly/version'

Gem::Specification.new do |s|
  s.name = 'omniauth-bitly'
  s.version = OmniAuth::bitly::VERSION
  s.authors = ['Jude Arasu']
  s.email = ['judearasu@genlinux.org']
  s.summary = 'Bitly strategy for OmniAuth2.0'
  s.homepage = 'https://github.com/judearasu/omniauth-bitly'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_dependency 'omniauth', '~> 1.0'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.0'
  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
  
end


