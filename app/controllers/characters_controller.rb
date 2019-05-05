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

    def show
        character = Character.find(params[:id])
        render json: character
    end

    def index
        @characters = Character.all
        render json: @characters
    end

    def update
        character = Character.find(params[:id])
        character.update(character_params)
        render json: character
    end

    def destroy 
        character = Character.find(params[:id])
        character.destroy
        render json: {success: "character destroyed"}
    end

    private

    def character_params
        params.require(:character).permit(:name, :race, :alignment, :image, :details, :level, :character_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :initiative, :armor_class, :speed, :hit_points, :inspiration, :user_id)
    end

end
