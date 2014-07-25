class HealthPowerup < Powerup

  def initialize(object_pool, x, y)
    super
    gfx = PowerupGraphics.new(self)
    gfx.type = :life_up
  end

  def on_collision(object)
    if object.class == Tank
      object.health.restore
      super
    end
  end

end