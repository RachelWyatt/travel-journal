class TripsController < ApplicationController
before_action :redirect_if_not_authorized, only: [:show]
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
        @trip_entries = @trip.trip_entries
    end
    
    private 
        def post_params 
            params.require(:trip).permit(:name)
        end

        def redirect_if_not_authorized 
            @trip = Trip.find(params[:id])
            if @trip.user_id != current_user.id
                redirect_to root_path
            end
        end

end
