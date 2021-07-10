class ArticleController < ApplicationController
  before_action :authenticate_user!, only: %i[new, create, update, delete]

  def index
    @articles = Article.availables
    if current_user
      my_articles = Article.where(user_id: current_user.id)
      @articles = @articles + my_articles
    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params.merge(user_id: current_user.id))
    @article.save

    if @article.save
      redirect_to root_path
    else
      render('new')
    end

  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :private)
  end

end
