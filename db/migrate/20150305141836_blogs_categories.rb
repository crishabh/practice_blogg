class BlogsCategories < ActiveRecord::Migration
  def change
    create_table :blogs_categories, :id => false do |t|
      t.integer :drug_id
      t.integer :category_id
    end
  end
end
