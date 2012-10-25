class Character < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
  def level
    level = 0
   ActiveRecord::Base::Game::ROLES.each do |r|
      level += self.send("#{r}_levels")
    end
    level
  end
end
