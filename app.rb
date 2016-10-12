require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:name_1])
    player2 = Player.new(params[:name_2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @name_1 = $game.player1.name
    @name_2 = $game.player2.name
    @game = $game
    @game.attacks(@game.player2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
