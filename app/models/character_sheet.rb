class CharacterSheet
  #attr_accessor :character

  def initialize(character)
    @character = character
    @race = @character.race.constantize
    @roles = @character.roles.split(/,\s*/).map {|role| role.constantize}
    Game::STATS.keys.each do |attribute|
      #binding.pry
      value = @character.send(attribute) +

      @race.stats[attribute].to_i +
      @roles.map{|role| role.stats[attribute]}.compact.inject(&:+).to_i

      self.instance_variable_set "@#{attribute}", value
    #@base_attack_bonus = @character.primary_role.constantize::BASE_ATTACK_BONUS[1.to_s.to_sym]
    end
  @level = @character.level
  end

end
