# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minicron/version'

Gem::Specification.new do |spec|
  spec.name                  = 'minicron'
  spec.version               = Minicron::VERSION
  spec.authors               = ['James White']
  spec.email                 = ['dev.jameswhite@gmail.com']
  spec.summary               = 'cli for minicron; a system a to manage and monitor cron jobs'
  spec.homepage              = 'https://github.com/jamesrwhite/minicron/tree/master/cli'
  spec.license               = 'GPL-3.0'
  spec.required_ruby_version = '>= 1.9.2'
  spec.post_install_message  = 'Thanks for installing minicron!'

  spec.require_paths = ['lib']
  spec.files         = ['lib/minicron.rb', 'lib/minicron/cli.rb', 'lib/minicron/version.rb']
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.executables  << 'minicron'

  spec.add_runtime_dependency 'colored', '~> 1.2'
  spec.add_runtime_dependency 'commander', '~> 4.1'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 2'
  spec.add_development_dependency 'coveralls' '~> 0.7'
end
