class VenuesController < ApplicationController
    before_action :redirect_if_not_logged_in?
    before_action :find_venue, only: [:show, :update, :edit, :destroy]
    
    def new
        @venue = Venue.new
       3.times {@venue.weddings.build}
    end

    def show
    end

    def index
        @venues = Venue.order_by_price
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
    end

    def update
        @venue.update(venue_params)
        if @venue.valid?
            redirect_to venue_path(@venue)
        else
            render :edit
        end
    end

    def destroy
        @venue.destroy
        redirect_to venues_path
    end

    def most_expensive
        @venues = Venue.order_by_price
        render :index
    end

    def least_expensive
        @venues = Venue.least_expensive.order_by_price
        render :index
    end

    private

    def venue_params
        params.require(:venue).permit(:name, :address, :price, weddings_attributes: [:title, :entertainment, :color_scheme, :flowers])
    end

    def find_venue
        @venue = Venue.find_by_id(params[:id])
    end


end
