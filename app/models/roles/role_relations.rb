module RoleRelations
  def self.included(klass)
    klass.has_one :fighter_choice
  end
end
