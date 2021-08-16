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
        #byebug

        #User.find_or_create_by(name: params["name"])
        user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.email = auth['info']['email']
            u.business_name = auth['info']['name']
            u.password = SecureRandom.hex(14)
        end
        if user.valid?
            session[:user_id] = user.id
            flash[:message] = "Successful Log In!!"
            redirect_to  weddings_path
        else

        end
        #email
        #password
        #username/businessname
        #uid
        #provider
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end