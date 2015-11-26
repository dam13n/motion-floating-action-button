# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "motion-floating-action-button"
  s.version     = '0.0.1'
  s.summary     = "Cool floating button motion for rubymotion ios"
  s.description = "Easily create a floating button interface."
  s.authors     = ["Damien Sutevski", "Siyuan Liu"]
  s.email				= "dameyawn@gmail.com"
  s.homepage		= "http://github.com/dam13n/motion-floating-action-button"

  s.require_paths = ["lib", "vendor"]
  # s.files         = `git ls-files`.split($\)
  s.files         = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["README.md"]
  s.license     = 'MIT'
end
