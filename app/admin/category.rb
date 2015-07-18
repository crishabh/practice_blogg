ActiveAdmin.register Category do
  index do
    id_column
    column :category_name
    column :name
    actions
  end
end
