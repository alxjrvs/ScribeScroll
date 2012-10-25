class Character < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

  Game::STATS.each do |s|
    method_name = "#{s[1][:short_name].downcase}_mod".to_sym
    define_method method_name do
      (self.send(s[1][:short_name].downcase) - 10)/2
    end
  end
end
