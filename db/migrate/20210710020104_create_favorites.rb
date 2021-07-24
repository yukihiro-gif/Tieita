class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :article_id,      null: false
      t.integer :post_comment_id, null: false

      t.timestamps
    end
  end
end
