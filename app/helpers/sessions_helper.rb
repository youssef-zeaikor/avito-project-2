
module SessionsHelper

    def log_in(user)
      session[:user_id] = user.id
    end
    def user_courant
        @user_courant = @user_courant ||
        User.find_by(id: session[:user_id])
    end

    def logged_in?
            ! user_courant.nil?
    end
    
    def log_out
        session.delete(:user_id)
        @user_courant = nil
    end

  end
