class Api::V1::SessionsController < ApplicationController
    def create
       @user = User.find_by(username: params[:session][:username])

       if @user && @user.authenticate(params[:session][:password])
        render json: @user
        session[:user_id] = @user.id
       else
        render json: {
            error: "Invalid Credentials"
        }
       end
    end

def get_current_user
    if logged_in?
        render json: current_user
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
