require_relative 'player'

class Game
  attr_reader :in_progress
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = [player_1]
    @in_progress = true
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
    opposing_player.alive == true ? switch_turns : game_over
  end

  def switch_turns
    @players << @current_turn
    @current_turn = [opposing_player]
  end

  def game_over
    @in_progress = false
  end
end