module ApplicationHelper

  def role_add
    if roles.nil?
      update_attributes(:roles => role)
    elsif roles.include? primary_role
      next
    else
      character.update_attributes(:roles => "#{roles},#{primary_role}")
    end
  end
end
