class RenameImage3CulumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :image3, :article_image3
  end
end
