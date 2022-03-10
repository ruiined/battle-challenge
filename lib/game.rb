require_relative 'player'

class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = [player_1]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def current_player
    @current_turn.first
  end

  def opposing_player
    (@players - @current_turn).first
  end

  def attack
    opposing_player.receive_damage
    switch_turns
  end

  def switch_turns
    @players << @current_turn
    @current_turn = [opposing_player]
  end
end