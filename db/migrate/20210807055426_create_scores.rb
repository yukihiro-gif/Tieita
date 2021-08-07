class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :title
      t.decimal :score, precision: 5, scale: 3
      t.timestamps
    end
  end
end
