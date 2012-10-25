module Fighter
  extend Game

  def base_attack_bonus
    {:"1" => +1}
  end

  def fort_save
  end

  def ref_save
  end

  def will_save
    #self.primary_role
  end

end
