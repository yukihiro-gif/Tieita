class ScoresController < ApplicationController
  def index
    @articles = Article.offset(rand(Article.count)).limit(5)
    @my_articles = current_user.articles
    @score = Score.new
    @scoring = Score.new
  end

  def create
    @score = Score.new
    @scoring = Score.new(params_title)
    @scoring.score = Language.get_data(params_title[:title]) # この行を追加
    @scoring.save
  end

  private

  def params_title
    params.require(:score).permit(:title)
  end
end
