class AddCategoryId < ActiveRecord::Migration
  def change
     add_column :blogs ,:author_id, :integer
     add_column :blogs ,:category_id ,:integer
   end
end
