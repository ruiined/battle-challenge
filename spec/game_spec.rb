require 'game'

describe Game do
  let(:game) { described_class.new(noob, pro_gamer) }
  let(:noob) { double :player }
  let(:pro_gamer) { double :player }

  it "takes two players as parameters" do
    expect { game }.to_not raise_error
  end

  it "health is reduced after an attack" do
    expect(noob).to receive(:receive_damage)
    game.attack(noob)
  end
end