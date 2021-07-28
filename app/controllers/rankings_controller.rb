class RankingsController < ApplicationController
  def index
    @articles = Article.find(Favorite.group(:article_id).order(Arel.sql('count(article_id) desc')).limit(50).pluck(:article_id))
  end
end