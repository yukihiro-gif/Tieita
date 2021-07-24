class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id,   null: false, default: ""
      t.string :title,      null: false, default: ""
      t.text :situation,    null: false, default: ""
      t.string :image1,     null: false, default: ""
      t.text :description1, null: false, default: ""
      t.string :image2,     null: false, default: ""
      t.text :description2, null: false, default: "" 
      t.string :image3,     null: false, default: ""
      t.text :description3, null: false, default: ""
      t.string :image4,     null: false, default: ""
      t.text :description4, null: false, default: ""

      t.timestamps
    end
  end
end
