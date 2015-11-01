class ArticlesController < ApplicationController
#instance variables allow views to access the variable

  def index
      @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
