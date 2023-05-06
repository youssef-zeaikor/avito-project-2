class ArticlesController < ApplicationController
  def show
      @articles = Article.all
    end
    
  def detail 
    @article = Article.find(params[:id])

  end
end
