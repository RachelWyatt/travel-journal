class TripsController < ApplicationController

    def new 
        @trip = Trip.new
    end

    def create 
        @trip = current_user.trips.new(post_params)
        if @trip.save
            redirect_to trip_path(@trip)
        else 
            render :new 
        end
    end

    def show 
        @trip = Trip.find(params[:id])
    end
    
    private 
        def post_params 
            params.require(:trip).permit(:name)
        end

end
