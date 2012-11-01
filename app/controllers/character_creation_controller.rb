class CharacterCreationController < ApplicationController
  include Wicked::Wizard

  steps :abilities, :race, :role, :name
  # after role: skills, feats, equipment, other.

  def show
    @character = Character.find(session[:char])
    render_wizard
  end

  def update
    @character = Character.find(session[:char])
    @character.attributes = params[:user]
    render_wizard @character
  end
end
