$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'gocoin/version'

spec = Gem::Specification.new do |s|
  s.name = 'gocoin'
  s.version = Gocoin::VERSION
  s.licenses = ['Apache']
  s.summary = 'A Ruby gem for the GoCoin API.'
  s.description = 'GoCoin is the best way to accept Bitcoin payments for online businesses.  See https://gocoin.com for details.'
  s.authors = ['GoCoin']
  s.email = ['kevin@gocoin.com']
  s.homepage = 'http://www.gocoin.com'

  s.add_dependency('rest-client', '~> 1.4')

  s.add_development_dependency( 'rake', '~> 10.0' )
  s.add_development_dependency( 'rspec', '~> 2.14' )
  
  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

end