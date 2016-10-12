describe Player do

  subject(:player) { described_class.new("Bob") }

  it "should return the player's name" do
    expect(player.name). to eq "Bob"
  end

end
