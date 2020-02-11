# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

class Aeneis < Sinatra::Base
  # Configuration
  configure :production, :development do
    enable :logging
  end

  configure :production do
    disable :raise_errors
    disable :show_exceptions
  end

  # Settings
  set :server,        :thin
  set :app_file,      __FILE__
  set :root,          File.dirname(settings.app_file)
  set :public_folder, File.join(settings.root, 'public')

  get '/' do
    erb :index
  end
end
