class ArticlesController < ApplicationController
  def index
      @articles = Article.all
    end

  def detail 
    @article = Article.find(params[:id])

  end

  def new 
    @article = Article.new
    
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
end
