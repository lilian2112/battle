require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    $name1 = Player.new(params[:name_1])
    $name2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @name_1 = $name1.name
    @name_2 = $name2.name
    erb :play
  end

  get '/attack' do
    @name_1 = $name1.name
    @name_2 = $name2.name
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
