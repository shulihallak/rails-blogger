class ArticlesController < ApplicationController
  include ArticlesHelper
#instance variables allow views to access the variable

  def index
      @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    flash[:notice]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    flash[:notice]
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice]
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end
end
