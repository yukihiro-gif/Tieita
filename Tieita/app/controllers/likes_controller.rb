class LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    if @article.user_id != current_user.id
      @likes = Like.create(user_id: current_user.id, article_id: @article.id)
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @like = Like.find_by(user_id: current_user.id, article_id: @article.id)
    @like.destroy

  end
end
