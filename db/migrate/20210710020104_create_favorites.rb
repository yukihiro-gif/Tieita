class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :article_id,      null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
