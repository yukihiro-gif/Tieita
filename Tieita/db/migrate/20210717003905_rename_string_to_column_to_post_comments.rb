class RenameStringToColumnToPostComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_comments, :string, :comment
  end
end
