require "sinatra/base"


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
    session[:player_1_name] = params[:player_1_name] #Session is used to store short-term info in a hash.
    session[:player_2_name] = params[:player_2_name]
    redirect '/play' # And remove the erb :play.
  end

  # Store the names in a session i.e. new game.
  # Extract the names from session to play, so we can play using the names submitted.

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

  run if app_file = $0

end
