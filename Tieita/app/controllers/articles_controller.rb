class ArticlesController < ApplicationController
  
  def new
   @article = Article.new()
  end
  
  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def create
    article = Article.new(params_article)
    article.save
    redirect_to ""
  end

  def update
  end

  def destroy
  end

private

def params_article
 params.require(:article).permit(:title, :situation, :image1, :description1, :image2, :description2, :image3, :description3, :image4, :description4 )
end

end
