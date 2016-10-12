require 'sinatra/base'
require_relative 'lib/player.rb'

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
    @player1_hp = $name1.hp
    @player2_hp = $name2.hp
    erb :play
  end

  get '/attack' do
    @name_1 = $name1.name
    @name_2 = $name2.name
    $name1.attacks($name2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
