module Elf
  include Race

  def size
    "Medium"
  end

  def int
    super + 2
  end
  def con
    super - 2
  end
  def dex
    super + 2
  end
  def abilities

  end

  #def skill_ranks_per_level
    #super + 1
  #end
  def speed
    "30 Ft. (6 Squares)"
  end
end
