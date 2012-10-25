class CharacterSheet
  #attr_accessor :character

  def initialize(character)
    @character = character
    @character.extend(@character.race.constantize)
    @character.roles.split(/,\s*/).each do |role|
      @character.extend(role.constantize)
    end
    
    Game::STATS.each do |attribute|
      attribute = attribute[0].to_s
      self.instance_variable_set "@#{attribute}", @character.send(attribute)
    @base_attack_bonus = @character.primary_role.constantize::BASE_ATTACK_BONUS[1.to_s.to_sym]
    end
  @level = @character.level
  end

end
