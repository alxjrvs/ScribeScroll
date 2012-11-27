class CharacterSheet
  attr_reader :race, :name, :roles, :stats, :level, :description, :base_attack_bonus, :character
  def initialize(character)
    @character = character
    @base_attack_bonus = 0
    @race = @character.race.constantize
    @name = @character.name
    #@roles = @character.roles.split(/,\s*/).map {|role| role.constantize}
    @roles = @character.primary_role.constantize
    @character.extend(@race)
    @character.extend(@character.primary_role.constantize)
    @stats = {}
    Game::STATS.keys.each do |attribute|
      value = @character.send(attribute) +
      @race.stats[attribute].to_i +
      #@roles.map{|role| role.stats[attribute]}.compact.inject(&:+).to_i
      @roles.stats[attribute].to_i
      @stats.merge!({attribute.to_sym => {:value => value, :mod =>(value-10)/2} })
    end
  #@level = @character.level
  @level = 1
  @base_attack_bonus = @roles::BASE_ATTACK[@level]
  @will_save = @roles::WILL_SAVE[@level]
  @ref_save = @roles::REF_SAVE[@level]
  @fort_save = @roles::FORT_SAVE[@level]
  @description = @character.description
  end
end
