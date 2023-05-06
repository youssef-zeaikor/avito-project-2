class PagesController < ApplicationController
  def home
    if session[:user_courant]
      @user = User.find(session[:user_courant])
    end
  end
end
