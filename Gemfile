source "https://rubygems.org"

puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 3.3']
gem 'puppet', puppetversion
gem 'rspec-puppet', :git => "https://github.com/rodjek/rspec-puppet.git"
gem 'puppet-lint', '>= 0.3.2'
gem 'facter', '>= 1.7.0'
gem 'rspec', '< 3.0.0'
