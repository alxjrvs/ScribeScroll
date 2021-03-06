module Game

  STATS = {str: {name: "strength", short_name: "STR"}, dex: {name: "dexterity", short_name: "DEX"}, con: {name: "constitution", short_name: "CON"}, wis: {name: "wisdom", short_name: "WIS"}, int: {name: "intellect", short_name: "INT"}, cha: {name: "charistma", short_name: "CHA"}}

  ROLES = ["fighter", "wizard"]
  SKILLS = {:acrobatics => {:name => "Acrobatics", :stat => STATS[:dex]},
  #"Fly",
 #"Ride",
 #"Appraise",
 #"Handle Animal",
 #"Sense Motive",
 #"Bluff",
 #"Heal",
 #"Sleight of Hand",
 #"Climb",
 #"Intimidate",
#"Spellcraft",
 #"Craft",
#"Knowledge (all)",
#"Stealth",
#"Diplomacy",
#"Linguistics",
#"Survival",
 #"Disable Device",
#"Perception",
#"Swim",
 #"Disguise",
#"Perform",
#"Use Magic Device",
#"Escape Artist",
#"Profession"

}


#Stats issues
  def mod(attributes)
    @stats = attributes
  end

  def stats
    if @stats
      @stats
    else
      {str: 0}
    end
  end
end

