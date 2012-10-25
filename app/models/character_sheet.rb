class CharacterSheet
  attr_accessor :character

  def initialize(character)
    @character = character
  end

  def to_stats
    @character.extend(@character.race.constantize)
    @character.roles.split(/,\s*/).each do |role|
      @character.extend(role.constantize)
    end

    Game::STATS.each do |attribute|
      attribute = attribute[0].to_s
      puts "#{attribute} = #{@character.send(attribute)}"
    end
  end
end
