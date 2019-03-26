class TripEntriesController < ApplicationController

    def index 
        @trip = Trip.find(params[:id])
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
