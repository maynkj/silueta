require_relative "lib/silueta/version"

Gem::Specification.new do |s|
  s.name        = "silueta"
  s.version     = Silueta::VERSION
  s.summary     = "Initialize an object with a hash of attributes"
  s.description = s.summary
  s.authors     = ["Mayn Ektvedt Kjær"]
  s.email       = ["mayn.kjaer@gmail.com"]
  s.homepage    = "https://github.com/harmoni/silueta"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest", "~> 1.2"
end
