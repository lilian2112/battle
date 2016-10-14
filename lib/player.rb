class Player
  INITIAL_HP = 60
  attr_reader :name
  attr_accessor :hp

  def initialize(name, hp = INITIAL_HP)
    @name = name
    @hp = hp
  end

  def random_damage
    @damage = rand(10..25)
  end

  def damage
    random_damage
    if @damage < @hp
    @hp -= @damage
  else @hp = "dies gracefully with 0 "
    end
  end

end
