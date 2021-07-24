class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id,         null: false, default: ""
      t.integer :post_comment_id, null: false, default: ""

      t.timestamps
    end
  end
end
