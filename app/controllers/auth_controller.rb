class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        temp = user_login_params[:username].downcase
        @user = User.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({user_id: @user.id})
            puts @user.id
            puts @user.username
            render json: { user: UserSerializer.new(@user), jwt: token, user_info: @user}, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end
    
end