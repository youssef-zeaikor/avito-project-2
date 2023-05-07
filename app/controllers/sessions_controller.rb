class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
      #  # redirect_to user
      #  redirect_to root_url
        flash[:notice] = "Logged in successfully"
        redirect_to user
        
      else
        flash.now[:alert] = 'Combinaison Email/Mot de passe invalide'
        render 'new'
      end
    end

    def destroy
      # log_out
      session[:user_id] = nil
      flash[:notice] = "Logged in successfully"
      # redirect_to 'new'
      redirect_to root_url
      
    end
end
