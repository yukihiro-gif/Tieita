class RankingsController < ApplicationController
  def index
    @articles = Article.find(Favorite.group(:article_id).order('count(article_id) desc').limit(5).pluck(:article_id))
  end
end
