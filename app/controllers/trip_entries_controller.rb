class TripEntriesController < ApplicationController

    def index 
        if params[:trip_id]
            @trip = Trip.find(params[:trip_id])
            @trip_entries = @trip.trip_entries
        else 
            redirect_to root_path
        end
    end 

    def new 
        @trip_entry = TripEntry.new
    end

    def create 
    end 

    def show 
    end

    def edit 
    end 

    def destroy
    end
end
