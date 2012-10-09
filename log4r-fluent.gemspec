# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'log4r/fluent_outputter'

Gem::Specification.new do |gem|
  gem.name          = "log4r-fluent"
  gem.version       = Log4r::FluentOutputter::VERSION
  gem.authors       = ["aoyagikouhei"]
  gem.email         = ["aoyagi.kouhei@gmail.com"]
  gem.description   = %q{Log4R Outputter for fluent}
  gem.summary       = %q{Log4R Outputter for fluent}
  gem.homepage      = "https://github.com/aoyagikouhei/log4r-fluent"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency(%q<log4r>)
  gem.add_dependency(%q<fluent-logger>)
end
