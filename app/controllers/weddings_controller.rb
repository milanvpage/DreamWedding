class WeddingsController < ApplicationController

    def new
        @wedding = Wedding.new
    end
    
    def create
        @wedding = Wedding.new(wedding_params) 
        if @wedding.save
            
            session[:wedding_id] = @wedding.id 
            
            redirect_to @wedding

        else
            render :new
        end
    end

    def show
        @wedding = Wedding.find_by_id(params[:id])
    end

    def index
        @weddings = Wedding.all
    end

    def edit
        @wedding = Wedding.find_by_id(params[:id])
    end

    def update
        @wedding = Wedding.find_by_id(params[:id])
        @wedding.update[wedding_params]
        if @wedding.valid?
            redirect_to wedding_path(@wedding)
        else
            render :edit
        end
    end

    def destroy
        @wedding = Wedding.find_by_id(params[:id])
        @wedding.destroy
        redirect_to weddings_path
    end


    private

    def wedding_params
        params.require(:wedding).permit(:title, :content)
    end

end
