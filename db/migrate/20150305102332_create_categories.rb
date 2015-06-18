class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :category
      t.timestamps null: false
    end
  end
end
