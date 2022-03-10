require 'game'

describe Game do
  let(:game) { described_class.new(pro_gamer, noob) }
  let(:noob) { double :noob, receive_damage: true, alive: true }
  let(:pro_gamer) { double :pro_gamer, receive_damage: true, alive: true}

  it "takes two players as parameters" do
    expect { game }.to_not raise_error
  end

  it "attacks" do
    expect { game.attack }.to_not raise_error
  end

  it "switches turns after an attack" do
    game.attack
    expect(game.current_player).to eq noob
  end
end