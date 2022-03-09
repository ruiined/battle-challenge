require 'player'

describe Player do
  let(:pro_gamer) { described_class.new("Pro Gamer") }
  it "returns its name" do
    expect(pro_gamer.name).to eq("Pro Gamer")
  end
end