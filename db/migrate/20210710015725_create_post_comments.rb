class CreatePostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_comments do |t|
      t.integer :user_id,    null: false
      t.integer :article_id, null: false
      t.text :string,        null: false
      t.timestamps
    end
  end
end
