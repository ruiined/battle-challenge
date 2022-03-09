require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:noob) { double :player }
  let(:pro_gamer) { double :player }
  it "health is reduced after an attack" do
    expect(noob).to receive(:receive_damage)
    game.attack(noob)
  end
end