class UsersController < ApplicationController
    def index 
        user=User.all 
        render json:user
    end
    def show
         if session[:user_id]
        user =User.find_by(id:params[:user_id])
        if user 
            render json: user
        else 
            render json: {error: "user not found "}
        end
    else
        render json:{error: "unathorized"}
    end
    end
end
