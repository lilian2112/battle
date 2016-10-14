require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.new_game(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game
    erb :play
  end

  get '/attack' do
    @game
    @game.attacks(@game.turn)
    @game.change_turn
    erb :attack
  end

  # get '/end' do
  #   @game = $game
  #   @game.
  # end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
