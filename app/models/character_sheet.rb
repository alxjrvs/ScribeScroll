class CharacterSheet
  #attr_accessor :character

  def initialize(character)
    @character = character
    @race = @character.race.constantize
    @roles = @character.roles.split(/,\s*/).map {|role| role.constantize}

    Game::STATS.keys.each do |attribute|
      value = @character.send(attribute) +
      @race.stats[attribute].to_i +
      @roles.map{|role| role.stats[attribute]}.compact.inject(&:+).to_i

      self.instance_variable_set "@#{attribute}", value
    end
  @base_attack_bonus = @character.primary_role.constantize.base_attack_bonus[@character.send("#{@character.primary_role.downcase}_levels").to_s.to_sym]
  @level = @character.level
  end

end
