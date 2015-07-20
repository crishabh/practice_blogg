ActiveAdmin.register Blog do
  config.sort_order ='id_asc'
  index do
    column :id
    column :name do |x|
      link_to x,"/blogs/#{x}"
    end
    column :author
    column :category
    actions
  end

  filter :author,as:"check_boxes"
  filter :category, :as => :check_boxes


  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs "Edit Blog" do
      f.input :name
      f.input :author
      f.input :category
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :author
      row :category
      row :created_at
      row :updated_at
    end

  end
end
