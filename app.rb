require "sinatra/base"

class Battle < Sinatra::Base

  get '/' do
    #p params
    #@name = params[:name]
    # erb :battle
    'Testing infrastructure working!'
  end

  run if app_file = $0
end
