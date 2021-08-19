class VenuesController < ApplicationController
    layout "venue"

    before_action :redirect_if_not_logged_in?
    before_action :find_venue, only: [:show, :update, :edit, :destroy]
    
    def new
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @venues = @user.venues.build
        else
        @venue = Venue.new
       3.times {@venue.weddings.build}
        end
    end

    def show
    end

    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @venues = @user.venues
        else
            @error = flash[:message] = "That Venue doesn't exist" if params[:user_id ]
            @venues = Venue.order_by_price
        end
        if params[:venue] && !params[:venue]
            @venues = Venue.order_by_price        
        end

    end

    def create
        @venue = Venue.new(venue_params)
        @venue.weddings.each do |w|
            w.user= current_user
           end
        if params[:wedding_id]
            @wedding = Wedding.find_by_id(params[:wedding])
            
        end
        if @venue.save
            
            session[:venue_id] = @venue.id 
            
            redirect_to venues_path

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