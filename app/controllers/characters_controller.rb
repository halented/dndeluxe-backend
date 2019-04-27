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
        byebug
        character = Character.new(character_params)
        render json: character
    end

    def index
        @characters = Character.all
    end

    private
    def character_params
        params.require(:character).permit(:name,
        :race,
        :alignment,
        :image,
        :details,
        :level,
        :class,
        :strength,
        :dexterity,
        :constitution,
        :intelligence,
        :wisdom,
        :charisma,
        :initiative,
        :armor_class,
        :speed,
        :hit_points,
        :inspiration)
    end
end
