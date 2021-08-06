class VenuesController < ApplicationController
    
    

    def show
        @venue = Venue.find_by_id(params[:id])
    end

    def index
        @venues = Venue.all
    end


end
