module Role
  def self.included(klass)
    klass.has_one :fighter_stuff
    #klass.has_one :wizard_stuff
  end
end
