#source "https://rubygems.org"
#
#puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 3.3']
#gem 'puppet', puppetversion
#gem 'rspec-puppet', :git => "https://github.com/rodjek/rspec-puppet.git"
#gem 'puppet-lint', '>= 0.3.2'
#gem 'facter', '>= 1.7.0'
#gem 'rspec', '< 3.0.0'
#
#
#  Taken from ntp module puppetlabs
source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :development, :unit_tests do
  gem 'rake',                    :require => false
  gem 'rspec-puppet',            :require => false
  gem 'puppetlabs_spec_helper',  :require => false
  gem 'puppet-lint',             :require => false
  gem 'simplecov',               :require => false
  gem 'puppet_facts',            :require => false
  gem 'json',                    :require => false
end

group :system_tests do
  gem 'beaker-rspec',  :require => false
  gem 'serverspec',    :require => false
end

if facterversion = ENV['FACTER_GEM_VERSION']
  gem 'facter', facterversion, :require => false
else
  gem 'facter', :require => false
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end

# vim:ft=ruby
