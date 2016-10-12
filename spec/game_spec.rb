require 'game'


describe Game do

  subject(:game) {described_class.new(player1, player2)}
  let(:player1){double :player1}
  let(:player2){double :player2}

  it { is_expected.to respond_to (:attacks) }

  it "should check that player1 starts the game" do
    expect(game.turn).to eq player2
  end

  it "should allow players to switch turns" do
    expect(game.change_turn).to eq player1
  end

end
