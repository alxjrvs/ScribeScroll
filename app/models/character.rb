class Character < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
  def level
    level = 0
   ActiveRecord::Base::Game::ROLES.each do |r|
      level += self.send("#{r}_levels")
    end
    level
  end
  def role_add
    if roles.nil?
      update_attributes(:roles => primary_role)
    elsif roles.include? primary_role
    else
      update_attributes(:roles => "#{roles},#{primary_role}")
    end
  end
end
