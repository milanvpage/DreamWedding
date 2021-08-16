class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) 
        if @user.save
            #log them in
            session[:user_id] = @user.id 
            #redirect to the show show page
            redirect_to user_path(@user)

        else
            render :new
        end
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    

    private

    def user_params
        params.require(:user).permit(:email, :password, :business_name, :uid, :provider)
    end

end
