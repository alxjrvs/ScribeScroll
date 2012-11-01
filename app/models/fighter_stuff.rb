class FighterStuff < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :character
end
