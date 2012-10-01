# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'log4r-fluent/version'

Gem::Specification.new do |gem|
  gem.name          = "log4r-fluent"
  gem.version       = Log4r::Fluent::VERSION
  gem.authors       = ["aoyagikouhei"]
  gem.email         = ["aoyagi.kouhei@gmail.com"]
  gem.description   = %q{Log4R Outputter for fluent}
  gem.summary       = %q{Log4R Outputter for fluent}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
