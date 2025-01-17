require 'player'

describe Player do
  let(:pro_gamer) { described_class.new("Pro Gamer") }
  let(:noob) { described_class.new("Noob") }
  it "returns a name" do
    expect(pro_gamer.name).to eq("Pro Gamer")
  end
  it "has health" do
    expect(noob.health).to eq(50)
  end
end