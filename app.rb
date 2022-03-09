require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect :play
  end

  get '/play' do 
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :attack
  end

  # dont delete this
  run! if app_file == $0
end