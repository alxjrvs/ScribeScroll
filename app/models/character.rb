class Character < ActiveRecord::Base
  before_save do 
    self.roles ||= primary_role
  end

    include ActiveModel::ForbiddenAttributesProtection
    include RoleRelations

  def level
    level = 0
   ActiveRecord::Base::Game::ROLES.each do |r|
      level += self.send("#{r}_levels")
    end
    level
  end

end
