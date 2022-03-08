require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # Add routes here

  get '/' do
    "Hello Battle!"
  end


  
  # dont delete this
  run! if app_file == $0
end