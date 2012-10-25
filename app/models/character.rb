class Character < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

  Game::STATS.each do |stat|
    method_name = "#{stat}_mod".to_sym
    define_method method_name do
      (self.send(stat) - 10)/2
    end
  end
end
