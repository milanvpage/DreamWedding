class ApplicationController < ActionController::Base
    #telling us we din't actually use this model for anything, only used so every controller can grab from ActiveRecord::Base (single source of truth example)
    include ApplicationHelper
    include WeddingsHelper
    #include VenuesHelper
    private
    def redirect_if_not_logged_in?
        redirect_to login_path if !logged_in?

    end
    def redirect_if_not_authorized
       @user = User.find(params[:id])
        if @user != current_user
            redirect_to weddings_path 
        end
    end
    
end
