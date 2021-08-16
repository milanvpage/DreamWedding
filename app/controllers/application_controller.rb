class ApplicationController < ActionController::Base
    #telling us we din't actually use this model for anything, only used so every controller can grab from ActiveRecord::Base (single source of truth example)
    include ApplicationHelper

    private
    def redirect_if_not_logged_in?
        redirect_to login_path if !logged_in?

    end
    
end
