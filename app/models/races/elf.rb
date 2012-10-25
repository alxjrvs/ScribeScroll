module Elf
  include Race

  def size
    "Medium"
  end

  def intelligence
    super + 2
  end
  def constitution
    super - 2
  end
  def dexterity
    super + 2
  end
  def abilities

  end

  def skill_ranks_per_level
    super + 1
  end
  def speed
    "30 Ft. (6 Squares)"
  end
end
