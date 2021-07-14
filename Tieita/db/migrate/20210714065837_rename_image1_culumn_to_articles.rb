class RenameImage1CulumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :image1, :article_image1
  end
end
