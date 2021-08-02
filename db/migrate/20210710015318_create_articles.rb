class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.text :situation
      t.string :article_image1_id
      t.text :description1
      t.string :article_image2_id
      t.text :description2
      t.string :article_image3_id
      t.text :description3
      t.string :article_image4_id
      t.text :description4
      
      t.decimal :score, precision: 5, scale: 3

      t.timestamps
    end
  end
end
