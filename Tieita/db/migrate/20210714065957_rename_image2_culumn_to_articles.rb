class RenameImage2CulumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :image2, :article_image2
  end
end
