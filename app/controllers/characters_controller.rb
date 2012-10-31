class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
    respond_to do |format|
      format.html # new.html
      format.json { render json: @character}
    end
  end
  def create
    @character = Character.create(character_params)
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Player was successfully created.' }
        format.json { render json: @character, status: :created, location: @character }
      else
        format.html { render action: "new" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @character = Character.find(params[:id])
      #Just for testing purposes
      Game::STATS.keys.each do |roll|
        @character.update_attributes(roll => Rollr::D6.roll(3))
      end
      @character_sheet = CharacterSheet.new(@character)
  end


  private
  def character_params
    params.require(:character).permit(:name, :race, :roles, :primary_role)
  end
end
