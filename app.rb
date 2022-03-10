require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


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
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do 
    @game = $game
    if @game.in_progress == false
      redirect '/game-over'
    end
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    # if @game.in_progress == false
    #   redirect '/game-over'
    # end
    erb :attack
  end

  get '/go-back' do
    redirect '/play'
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end
  # dont delete this
  run! if app_file == $0
end