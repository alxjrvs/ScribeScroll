module Fighter
  extend Game

  def self.included(klass)
    klass.has_one :fighter_stuff
  end

  def base_attack_bonus
    {:"1" => +1}
  end

  def fort_save
  end

  def ref_save
  end

  def will_save
  end

end
