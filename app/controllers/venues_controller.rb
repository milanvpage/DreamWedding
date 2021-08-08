class VenuesController < ApplicationController
    
    def new
        @venue = Venue.new
    end

    def show
        @venue = Venue.find_by_id(params[:id])
    end

    def index
        @venues = Venue.all
    end

    def create
        @venue = Venue.new(venue_params) 
        if @venue.save
            
            session[:venue_id] = @venue.id 
            
            redirect_to @venue

        else
            render :new
        end
    end

    def edit
        @venue = Venue.find_by_id(params[:id])
    end

    def update
        @venue = Venue.find_by_id(params[:id])
        @venue.update[venue_params]
        if @venue.valid?
            redirect_to venue_path(@venue)
        else
            render :edit
        end
    end

    def destroy
        @venue = Venue.find_by_id(params[:id])
        @venue.destroy
        redirect_to venues_path
    end

    private

    def venue_params

        params.require[:venue].permit[:name, :location]
    end


end
