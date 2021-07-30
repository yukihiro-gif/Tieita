class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def index
    if user_signed_in?
      @articles = Article.all
      @likes = Like.where(user_id: current_user.id)
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
    @post_comment = PostComment.new
    @post_comments = @article.post_comments
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(params_article)
    article.user_id = current_user.id

    if article.save
      redirect_to articles_path, notice: "投稿記事の作成に成功しました"
    else
      redirect_to new_article_path, alert: "投稿記事の作成に失敗しました。必ず[タイトル][使用場面][手順①]を記入してください。"
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(params_article)
      redirect_to articles_path, notice: "投稿記事の更新に成功しました。"
    else
      redirect_to edit_article_path, alert: "投稿記事の更新に失敗しました。必ず[タイトル][使用場面][手順①]を記入してください。"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to profile_path(current_user), notice: "投稿記事を削除しました。"
  end

  private

  def params_article
    params.require(:article).permit(:title, :situation, :article_image1, :description1, :article_image2, :description2, :article_image3, :description3, :article_image4, :description4)
  end
end
