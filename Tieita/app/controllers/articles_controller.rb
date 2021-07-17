class ArticlesController < ApplicationController

  def new
   @article = Article.new()
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @post_comment = PostComment.new
    @post_comments = @article.post_comments
    @user = User.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(params_article)
    article.user_id = current_user.id

   if article.save
    redirect_to ""
   else
    redirect_to new_article_path
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
 params.require(:article).permit(:title, :situation, :article_image1, :description1, :article_image2, :description2, :article_image3, :description3, :article_image4, :description4 )
end

end
