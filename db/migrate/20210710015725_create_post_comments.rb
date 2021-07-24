class CreatePostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_comments do |t|
      t.integer :user_id,    null: false, default: ""
      t.integer :article_id, null: false, default: ""
      t.text :string,        null: false, default: ""
      t.timestamps
    end
  end
end
