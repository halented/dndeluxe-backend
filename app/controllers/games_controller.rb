class GamesController < ApplicationController
    def create
        game = Game.create(game_params)
        if game.valid?
            render json: game
        else
            render json: {error: "game creation failed"}, status: :not_acceptable
        end
    end

    def index
        @games = Game.all
        render json: @games
    end

    private
    def game_params
        params.require(:game).permit(:group_name,:location, :details)
    end
end
