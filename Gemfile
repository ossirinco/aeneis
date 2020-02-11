# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.3.1'

# Ruby JSON implementation (https://github.com/flori/json)
gem 'json', '~> 2.3'
# Simple way to load code (https://github.com/jarmo/require_all)
gem 'require_all', '~> 3.0'
# Task runner utility for Ruby (https://github.com/ruby/rake)
gem 'rake', '>= 12'
# Minimal-effort web framework (https://github.com/sinatra/sinatra)
gem 'sinatra', '~> 2.0'

group :production do
  # HTTP server for Rack applications (https://github.com/defunkt/unicorn)
  gem 'unicorn', '~> 5.5'
end

group :development, :test do
  # Fast and simple web server (https://github.com/macournoyer/thin)
  gem 'thin', '~> 1.7'
end

group :test do
  # Random test data generator (https://github.com/stympy/faker)
  gem 'faker', '~> 2.10'
  # Simple testing API for Rack apps (https://github.com/rack-test/rack-test)
  gem 'rack-test', '~> 1.1'
  # BDD testing tool (https://github.com/rspec/rspec)
  gem 'rspec', '~> 3.6'
end

group :development do
  # Pretty print Ruby objects (https://github.com/awesome-print/awesome_print)
  gem 'awesome_print'
  # Process manager for applications (https://github.com/ddollar/foreman)
  gem 'foreman'
  # IRB console alternative and debugger (https://github.com/rweng/pry-rails)
  gem 'pry-byebug'
  # Application restarter on file changes (https://github.com/alexch/rerun)
  gem 'rerun'
  # Analyze and enforce code style (https://github.com/rubocop-hq/rubocop)
  gem 'rubocop'
end
