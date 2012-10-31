class Character < ActiveRecord::Base
  after_create :role_check
    include ActiveModel::ForbiddenAttributesProtection
  def level
    level = 0
   ActiveRecord::Base::Game::ROLES.each do |r|
      level += self.send("#{r}_levels")
    end
    level
  end

  private

  def role_check
    if roles.nil?
      update_attributes(:roles => primary_role)
    elsif roles.include? primary_role
    end
  end
end
