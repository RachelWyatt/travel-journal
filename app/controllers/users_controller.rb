class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            flash[:message] = "Successfully signed up!"
            redirect_to trips_path
        else 
            render :new 
        end
    end

    private 
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
