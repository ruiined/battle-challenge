class Player
  attr_reader :name, :health

  DEFAULT_HEALTH = 50

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def receive_damage
    @health -= 10
  end
end
