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
        @trip_entry = TripEntry.new(trip_id: params[:trip_id])
    end

    def create
        @trip_entry = TripEntry.new(trip_entry_params)
        if @trip_entry.save
            redirect_to root_path
        else 
            render :new 
        end
    end 

    def show 
    end

    def edit 
    end 

    def destroy
    end

    private 
    def trip_entry_params 
        params.require(:trip_entry).permit(:journal_entry, :trip_id, :location_id, :created_at, :updated_at)
    end

    def location_params 
        params.require(:location).permit(:name)
    end
end
