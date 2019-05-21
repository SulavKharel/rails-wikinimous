class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy ]

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def edit
  end

  def update
    @article.update(article_params)
  end

  def destroy
    @article.destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :details)
  end
end
