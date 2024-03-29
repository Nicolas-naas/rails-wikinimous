class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  private

def article_params
  params.require(:article).permit(:title, :content)
end
end
