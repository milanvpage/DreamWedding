module ApplicationHelper
    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def navigation_helper
        if !logged_in? 
         button_to("Sign in with Google", '/auth/google_oauth2')
        else 
         link_to("Log Out", logout_path, method: 'delete')
        end 
    end
end
