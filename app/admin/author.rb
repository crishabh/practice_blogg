ActiveAdmin.register Author do
  config.sort_order = 'id_asc'
  index do
      id_column
      column :author_name
    actions
    end

   filter :author_name,:label=>"ALL BLOGS " ,:collection => Blog.all.map(&:name), :as => :check_boxes
  # joins("LEFT JOIN student_enrollments ON courses.id = student_enrollments.course_id")
  # SELECT COUNT(DISTINCT `categories`.`id`) FROM `categories` LEFT OUTER JOIN `blogs` ON `blogs`.`category_id` = `categories`.`id` WHERE `blogs`.`id` = 3
  # join("LEFT OUTER JOIN `blogs` ON `blogs`.`category_id` = `categories`.`id` WHERE `blogs`.`id` = 3  ORDER BY `categories`.`id` asc)
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
