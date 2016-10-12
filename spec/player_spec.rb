describe Player do

  subject(:player) { described_class.new("Bob") }

  it "returns the player's name" do
    expect(player.name).to eq "Bob"
  end

  it "has has hit-points associated with each player" do
    expect(player.hp).to eq 100
  end

  it "reduces hit points by 10 when attacked" do
    expect(player.damage).to eq 90
  end
end
