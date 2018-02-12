class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.author = "Paul"
    @article.public = true
    @article.save
    redirect_to @article
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
