class UsersController < ApplicationController
  
  before_action :authenticate, :only => [:index, :edit, :update, :destroy]
  before_action :bon_user, :only => [:edit, :update]

def index
  @user = User.all
end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #@Articles = @utilisateur.Articles
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:use]
      #pour afficher bienvenue au lieu de red whene he click save"
      flash[:success] = "bienvenue!"
       # redirect_to @user
       redirect_to login_url
       
        
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end



  def update
    @user = User.find(params[:id])  
    if @user.update(user_params)
        flash[:success] = "Profile Actualisé!"
        redirect_to articles_path
      else
        render 'edit'
      end
    end
  
    def destroy
      User.find(params[:id]).destroy
    flash[:success] = "Utilisateur supprimé"
    redirect_to root_url
    end
  

  private
    def user_params #to save our website c'est une couche de sécurité
      params.require(:user).permit(:nom, :email, :password, :password_confirmation, :tele, :ville)
    end
    def authenticate
      unless logged_in?
        flash[:danger] = "Merci de se connecter."
        redirect_to login_url
      #  redirect_to root_url # redirect to home page
        
      end
    end
    def bon_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == @user_courant
    end
end
