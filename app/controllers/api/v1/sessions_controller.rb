class Api::V1::SessionsController < ApplicationController
    def create
       @user = User.find_by(username: params[:session][:username])

       if @user && @user.authenticate(params[:session][:password])
    
        session[:user_id] = @user.id
        render json: UserSerializer.new(@user).serializable_hash.to_json, status: :ok
       else
        render json: {
            error: "Invalid Credentials"
        }
       end
    end

def get_current_user
    if logged_in?
        user_json = UserSerializer.new(current_user).serializable_hash.to_json
        render json: user_json
    else
        render json: {
        error: "No one is logged in"
        }
    end
end


def destroy
    session.clear
    render json: {
        notice: "successfully logged out"
    }, status: :ok
end

end
