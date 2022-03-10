class Player
  attr_reader :name, :health, :alive

  DEFAULT_HEALTH = 50

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
    @alive = true
  end

  def receive_damage
    @health -= 10
    @alive = false if @health <= 0
  end
end
