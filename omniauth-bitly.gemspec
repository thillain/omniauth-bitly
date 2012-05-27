require File.expand_path('../lib/omniauth-bitly/version', __FILE__)

Gem::Specification.new do |s|
  s.authors = ["Jude Arasu"]
  s.email = ["judearasu@genlinux.org"]
  s.description = %q{OmniAuth strategy for Bitly.}
  s.summary = %q{OmniAuth strategy for Bitly.}
  s.homepage = "https://github.com/judearasu/omniauth-bitly"

  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.name = "omniauth-bitly"
  s.require_paths = ["lib"]
  s.version = OmniAuth::Bitly::VERSION

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end


