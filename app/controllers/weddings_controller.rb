class WeddingsController < ApplicationController

    before_action :redirect_if_not_logged_in?
    before_action :find_wedding, only: [:show, :update, :edit, :destroy]
    before_action :wedding_user, except: [:index, :show, :create, :new]

    layout "wedding"

    def new
        if params[:venue_id] && @venue = Venue.find_by_id(params[:venue_id])
            #@wedding = Wedding.new(venue_id: params[:venue_id])
            @wedding = @venue.weddings.build
        else
            @error = flash[:message] = "That Venue doesn't exist" if params[:venue_id ]
            @wedding = Wedding.new
            w = @wedding.build_venue
            w.build_state
        end
        
    end
    
    def create
        @wedding = current_user.weddings.build(wedding_params)
        if params[:venue_id]
            @venue = Venue.find_by_id(params[:venue_id])
        end
        if @wedding.save            
            redirect_to @wedding
        else
            render :new
        end
    end

    def show
    end

    def index
        if params[:venue_id] && @venue = Venue.find_by_id(params[:venue_id])
           @weddings = @venue.weddings
        else
            @error = flash[:message] = "That Venue doesn't exist" if params[:venue_id ]
            @weddings = Wedding.all
        end

    end

    def edit
    end

    def update

        @wedding.update(wedding_params)
        if @wedding.valid?
            redirect_to wedding_path(@wedding)
        else
            render :edit
        end
    end

    def destroy
        @wedding.destroy

        redirect_to weddings_path
    end


    private

    def wedding_params
        params.require(:wedding).permit(:title, :entertainment, :color_scheme, :flowers, :user_id, :venue_id, venue_attributes:[:name, :address, :price, :state_id, state_attributes: [:name]])
    end

    def find_wedding
        #@wedding = current_user.weddings.find(params[:id])
        @wedding = Wedding.find_by_id(params[:id])

    end

    

    

end
