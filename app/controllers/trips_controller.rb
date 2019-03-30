class TripsController < ApplicationController
before_action :redirect_if_entry_nonexistent, only: [:show]
before_action :redirect_if_not_authorized, only: [:show]
before_action :redirect_if_not_logged_in, only: [:new, :index]
    def new 
        @trip = Trip.new
    end

    def create 
        @trip = current_user.trips.new(trip_params)
        if @trip.save
            redirect_to trip_path(@trip)
        else 
            render :new 
        end
    end

    def show 
        @trip = Trip.find(params[:id])
        @trip_entries = @trip.trip_entries
        @trip_entry = TripEntry.new
    end

    def index 
        @trips = Trip.all
    end
    
    private 
        def trip_params 
            params.require(:trip).permit(:name, :user_id)
        end

        def redirect_if_not_authorized 
            @trip = Trip.find(params[:id])
            if current_user == nil || @trip.user.id != current_user.id
                redirect_to welcome_path
            end
        end

        def redirect_if_not_logged_in
            if !logged_in? 
                redirect_to welcome_path 
            end
        end

        def redirect_if_entry_nonexistent 
            if @trip == nil 
                redirect_to welcome_path 
                flash[:message] = "That trip doesn't exist!"
            end
        end

end
