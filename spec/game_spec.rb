require 'game'

subject(:game) {described_class.new(player1 = Player, player2 = Player)}

describe Game do
  it { is_expected.to respond_to (:attacks) }
end
