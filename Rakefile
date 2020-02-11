# frozen_string_literal: true

require 'bundler/setup'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop)

task default: [:rubocop, :spec]

desc 'Start development server'
task :dev do
  exec 'foreman start -e .env.dev -f Procfile.dev'
end
