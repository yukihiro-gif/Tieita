class RenamePostCommentIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :post_comment_id, :article_id
  end
end
