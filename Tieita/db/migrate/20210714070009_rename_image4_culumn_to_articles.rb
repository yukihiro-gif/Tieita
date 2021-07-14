class RenameImage4CulumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :image4, :article_image4
  end
end
