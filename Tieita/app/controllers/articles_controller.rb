class ArticlesController < ApplicationController
  
  def new
   @article = Article.new()
  end
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(params_article)
    user.id = current_user.id
    
   if article.save
    redirect_to ""
   else
    render :new
   end
  end

  def update
    article = Article.find(params[:id])
    
    if article.update(params_article)
     redirect_to articles_path
    else
     render :edit
    end 
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

private

def params_article
 params.require(:article).permit(:title, :situation, :image1, :description1, :image2, :description2, :image3, :description3, :image4, :description4 )
end

end
