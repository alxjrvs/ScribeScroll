module Human
  include Race
  def size
    "Medium"
  end

  def level_one_feats
    super + 1
  end

  def skill_ranks_per_level
    super + 1
  end
  def speed
    "30 Ft. (6 Squares)"
  end
end
