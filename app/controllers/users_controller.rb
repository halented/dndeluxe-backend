class UsersController < ApplicationController

    def new
        user = User.find_or_create_by(username: params[:username])
        render json: user
    end

    def show
        user = User.find_or_create_by(username: params[:username])
        render json: user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end
 
  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :avatar)
  end
end
