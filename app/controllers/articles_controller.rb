class ArticlesController < ApplicationController
  def index
      @articles = Article.all
    end

  def detail 
    @article = Article.find(params[:id])

  end

  def new 
    @article = Article.new
    if session[:user_id]
      @user =  User.find(session[:user_id])
    else
      nil
    end

  end
  
  def create
      @article = Article.new(params.require(:article).permit(:title,:description,:article_type,:image_url,:price,:etat,:annee_modele,:orgine,:premiere_main,:marque,:nombre_portes,:modele,:kilometrage,:ville))
      @article.user = User.first
      if @article.save
          flash[:notice] = "Article was created successfuly."
          redirect_to articles_path("detail/#{@article.id}")
      else
          render 'new'
      # render plain: params[:article]
        end
  end

  def edit
    @article = Article.find(params[:id])
  end


  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title,:description,:article_type,:image_url,:price,:etat,:annee_modele,:orgine,:premiere_main,:marque,:nombre_portes,:modele,:kilometrage,:ville))
      flash[:notice]="article was updated successfully."
      redirect_to "/detail/#{@article.id}"
    else 
         render "edit"
      end
    end
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end



  
  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_path
    end
  end
