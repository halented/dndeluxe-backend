class UserGamesController < ApplicationController
    def create
       @user_game = UserGames.create(user_game_params)
       if @user_game.valid?
       render json: @user_game
       else 
        render json: {error: "user game association could not be created"}, status: :not_acceptable
       end
    end

    def index
        @user_games = UserGames.all
        render json: @user_games
    end

    private
    def user_game_params
        params.require(:user_game).permit(:user_id, :game_id)
    end
end
