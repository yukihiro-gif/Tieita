class PostCommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @post_comment = PostComment.new
    @post_comments = @article.post_comments
    @comment = PostComment.new(params_post_comment)
    @comment.user_id = current_user.id
    @comment.article_id = @article.id
    @comment.save
  end

  private

  def params_post_comment
    params.require(:post_comment).permit(:comment)
  end
end
