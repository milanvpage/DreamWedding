class SessionsController < ApplicationController
    def welcome 
        render :layout => 'welcome'
    end
    
    def new
    end

    def create
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to weddings_path
        else
            flash[:message] = "Invalid Email or Password."
            redirect_to login_path
        end

    end
     
    def omniauth
        byebug
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    
end