class RenameColumnCategory < ActiveRecord::Migration
  def change
    rename_column :categories, :category, :category_name
  end
end
