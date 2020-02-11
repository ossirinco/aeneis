# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default, :test)

require_relative '../app.rb'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  # Make Rack::Test available to all spec contexts
  config.include Rack::Test::Methods

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # Enable temporarily focused examples and groups
  config.filter_run_when_matching :focus

  # Use expect syntax
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Use the documentation formatter for detailed output
  config.default_formatter = 'doc'

  # Run specs in random order to surface order dependencies
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option
  Kernel.srand config.seed

  # Load Sinatra app for Rack testing
  def app
    described_class
  end
end
