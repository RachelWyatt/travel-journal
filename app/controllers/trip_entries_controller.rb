class TripEntriesController < ApplicationController

    def new 
        @trip_entry = TripEntry.new(trip_id: params[:trip_id])
    end

    def create
        set_trip
        @trip_entry = TripEntry.new(trip_entry_params)
        if @trip_entry.save
            redirect_to trip_path(@trip)
        else 
            render 'trip_entries/new'
        end
    end 

    private 
    def trip_entry_params 
        params.require(:trip_entry).permit(:journal_entry, :trip_id, :location_id)
    end

    def set_trip 
        @trip = Trip.find(params[:trip_id])
    end

end
