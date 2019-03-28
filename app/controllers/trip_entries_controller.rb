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
        byebug
        @trip_entry = current_user.trip_entries.new(trip_entry_params)
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
        params.require(:trip_entry).permit(:journal_entry, :trip_id)
    end
end
