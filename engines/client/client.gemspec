$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "client"
  s.version     = Client::VERSION
  s.authors     = ["Elton Silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Client."
  s.description = "TODO: Description of Client."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
