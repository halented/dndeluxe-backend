class UserGamesController < ApplicationController
    def create
       @user_game = UserGame.create(user_game_params)
       if @user_game.valid?
       render json: {game: @user_game}
       else 
        render json: {error: "user game association could not be created"}, status: :not_acceptable
       end
    end

    def index
        @user_games = UserGame.all
        render :json => @user_games, include: '**'
    end

    def destroy
        user_game = UserGame.find(params[:id])
        user_game.destroy
        render json: {success: "Game removed"}
    end

    private
    def user_game_params
        params.require(:user_game).permit(:user_id, :game_id)
    end
end
