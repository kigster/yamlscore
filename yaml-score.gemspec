# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml/score/version'

Gem::Specification.new do |spec|
  spec.name          = 'yaml-score'
  spec.version       = Yaml::Score::VERSION
  spec.authors       = ['Konstantin Gredeskoul', 'Artem Kozaev']
  spec.email         = %w(kig@simbi.com artem@simbi.com)

  spec.summary       = %q{Calculate a score based on YAML rules and formulas}
  spec.description   = %q{Calculate a score based on YAML rules and formulas}
  spec.homepage      = 'https://github.com/Simbi-Inc/yaml-score'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end