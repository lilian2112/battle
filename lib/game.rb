require_relative 'player.rb'

class Game

  attr_reader :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player2
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def attacks(name)
    name.damage
  end

  def change_turn
    if @turn == player1
      @turn = player2
    else
      @turn = player1
    end
  end

end
