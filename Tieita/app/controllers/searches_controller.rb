class SearchesController < ApplicationController
  def search
    @articles = Article.search(params[:keyword])
    @keyword = params[:keyword]
  end
end
