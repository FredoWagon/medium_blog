class ArticleController < ApplicationController
  before_action :authenticate_user!, only: %i[new, create, update, delete]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
