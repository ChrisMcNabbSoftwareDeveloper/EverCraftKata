class Character
  attr_accessor :name
  attr_accessor :alignment
  attr_accessor :armor_class
  attr_accessor :hit_points
  attr_accessor :strength
  attr_accessor :dexterity
  attr_accessor :constitution
  attr_accessor :wisdom
  attr_accessor :intelligence
  attr_accessor :charisma

  def initialize(p_name="Porthos", p_alignment="Good")
    @name = p_name
    @alignment = p_alignment
    @armor_class = 10
    @hit_points = 5
    @roll_value = 17
    @strength = 10
    @dexterity = 10
    @constitution = 10
    @wisdom = 10
    @intelligence = 10
    @charisma = 10
  end

  def attack(p_enemy)
    result = roll >= p_enemy.armor_class
    if @roll_value == 20
      p_enemy.hit_points -= 2
    elsif result
      p_enemy.hit_points -= 1
    end
    result
  end

  def shim_roll_value(p_value)
    @roll_value = p_value
  end
  
  def roll
    @roll_value
  end

  def get_modifier(score)
    (score/2)-5
  end
  
end
