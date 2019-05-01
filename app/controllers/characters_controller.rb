class CharactersController < ApplicationController

    def create 
        @character = Character.create(character_params)
        if @character.valid?
            render json: @character
        else
            render json: {error: "character creation failed"}, status: :not_acceptable
        end
    end

    def new
        character = Character.new()
        render json: character
    end

    def index
        @characters = Character.all
        render json: @characters
    end

    private

    def character_params
        params.require(:character).permit(:name, :race, :alignment, :image, :details, :level, :character_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :initiative, :armor_class, :speed, :hit_points, :inspiration, :user_id)
    end

end
