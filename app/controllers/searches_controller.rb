class SearchesController < ApplicationController
  def search
    @articles = Article.search(params[:keyword])
    @keyword = params[:keyword]
  end

  def sort
    @articles = Article.sort(params[:keyword])
    render 'articles/index'
  end

end
