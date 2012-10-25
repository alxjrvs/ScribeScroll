class Character < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

  def self.test
    p Game::STATS
  end

  Game::STATS.each do |stat|
    method_name = "#{stat.downcase}_mod".to_sym
    define_method method_name do
      (self.send(stat) - 10)/2
    end
  end
end
