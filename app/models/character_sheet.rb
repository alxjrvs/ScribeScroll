class CharacterSheet
  attr_reader :race, :name, :roles, :stats, :level
  def initialize(character)
    @character = character
    @race = @character.race.constantize
    @name = @character.name
    #LINES HERE FOR TESTING
    @character.primary_role = "Fighter"
    @character.roles = "Fighter"
    #TO BE DETLETED
    @roles = @character.roles.split(/,\s*/).map {|role| role.constantize}
    @character.extend(@race)
    @character.extend(@character.primary_role.constantize)
    @stats = {}
    Game::STATS.keys.each do |attribute|
      value = @character.send(attribute) +
      @race.stats[attribute].to_i +
      @roles.map{|role| role.stats[attribute]}.compact.inject(&:+).to_i
      @stats.merge!({attribute.to_sym => {:value => value, :mod =>(value-10)/2} })
    end
  @base_attack_bonus = @character.base_attack_bonus[@character.send("#{@character.primary_role.downcase}_levels").to_s.to_sym]
  @level = @character.level

  end
end
