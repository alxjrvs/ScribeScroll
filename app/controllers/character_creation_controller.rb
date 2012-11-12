class CharacterCreationController < ApplicationController
  include Wicked::Wizard

  steps :abilities, :race, :role, :info
  # after role: skills, feats, equipment, other.

  def show
    @character = Character.find(session[:char])
    render_wizard
  end

  def update
    @character = Character.find(session[:char])
    @character.update_attributes(character_params)
    render_wizard @character
  end

  private

  def finish_wizard_path
    character_path(@character)
  end

  def character_params
    params.require(:character).permit(:name, :race, :roles, :primary_role, :str, :con, :dex, :int, :wis, :cha, :con)
  end
end
