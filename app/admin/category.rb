ActiveAdmin.register Category do
  config.sort_order = 'id_asc'
  index do
    id_column
    column :category_name
    column :name
    actions
  end
end
