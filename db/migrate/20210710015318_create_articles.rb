class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id,   null: false
      t.string :title,      null: false
      t.text :situation,    null: false
      t.string :image1,     null: false
      t.text :description1, null: false
      t.string :image2,     null: false
      t.text :description2, null: false
      t.string :image3,     null: false
      t.text :description3, null: false
      t.string :image4,     null: false
      t.text :description4, null: false

      t.timestamps
    end
  end
end
