class ApplicationController < ActionController::Base

    private 

    def current_user
        #@current_user ||= User.find_by(id: session[:user_id])
        @current_user = User.first #for testing purposes
    end

    def logged_in?
        !!current_user 
    end
end
