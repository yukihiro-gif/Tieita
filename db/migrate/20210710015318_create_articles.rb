class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id,   null: false
      t.string :title,      null: false
      t.text :situation,    null: false
      t.string :image1
      t.text :description1, null: false
      t.string :image2
      t.text :description2
      t.string :image3
      t.text :description3
      t.string :image4
      t.text :description4

      t.timestamps
    end
  end
end
