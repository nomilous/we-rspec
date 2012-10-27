$LOAD_PATH.unshift 'lib'
Gem::Specification.new do |spec|
  spec.name = %q{we-rspec}
  spec.version = '0.0.0' 
  spec.date = DateTime.now.strftime( "%Y-%m-%d" )
  spec.authors = ["nomilous","","",""]
  spec.email = %q{}
  spec.summary = %q{RSpec extensions for we.gem}
  spec.homepage = %q{https://github.com/nomilous/we-rspec}
  spec.description = %q{}
  spec.files = `git ls-files`.strip.split("\n")
end
