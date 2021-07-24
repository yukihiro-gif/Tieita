class RenameArticlesIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :articles_id, :article_id
  end
end
