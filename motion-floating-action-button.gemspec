# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "motion-floating-action-button"
  s.version     = '0.0.1'
  s.summary     = "Rubymotion gem to use TinderSimpleSwipeCards"
  s.description = "Easily create an interface with swipeable cards."
  s.authors     = ["Damien Sutevski", "Siyuan Liu"]
  s.email				= "dameyawn@gmail.com"
  s.homepage		= "http://github.com/dam13n/motion-floating-action-button"

  s.require_paths = ["lib", "vendor", "resources"]
  # s.files         = `git ls-files`.split($\)
  s.files         = Dir["lib/**/*"] + Dir["vendor/**/*"] + Dir["resources/**/*"] + ["README.md"]
  s.license     = 'MIT'
end
