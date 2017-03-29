require "sinatra/base"
require "./lib/player.rb"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    #p params
    #@name = params[:name]
    # erb :battle
    erb :index
    # 'Testing infrastructure working!'
  end

  post '/names' do
    #Params is like a big hash that stores the (user inputed) variables.
    $player_1 = Player.new(params[:player_1_name]) # Set variable to new player.
    $player_2 = Player.new(params[:player_2_name])
    #Session is used to store short-term info in a hash.
    redirect '/play' # And remove the erb :play.
  end

  # Store the names in a session i.e. new game.
  # Extract the names from session to play, so we can play using the names submitted.

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end

  run if app_file = $0

end
