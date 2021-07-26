class FavoritesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    favorite = Favorite.new(article_id: @article.id)
    favorite.user_id = current_user.id
    favorite.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    favorite = Favorite.find_by(article_id: @article.id)
    favorite.user_id = current_user.id
    favorite.destroy
  end
end
