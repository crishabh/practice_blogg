ActiveAdmin.register Author do
  config.sort_order = 'id_asc'
  index do
      id_column
      column :author_name
    actions
    end

  # filter :name,:collection => Blog.all.map(&:name), :as => :check_boxes

  controller do
    def permitted_params
      params.permit!
    end

  end

  sidebar 'Books by this Author', :only => :show do
  table_for Blog.joins(:author).where(:author_id => author.id) do |t|
    t.column("Title") { |blog| link_to blog.name, "/blogs/#{blog.name}" }
  end
  end
end
