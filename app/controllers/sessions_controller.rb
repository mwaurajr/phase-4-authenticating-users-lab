class SessionsController < ApplicationController
    def create
        users = User.find_by(username:params[:username])
        session[:user_id] = users.id
        render json: users
       
    end


    def destroy
        session.delete :user_id
        head :no_content
    end
end
