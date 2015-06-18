class CategoriesController < ApplicationController
  def categories_show
    @category = Category.find_by_category_name(params[:category_id])
    @blog= Blog.where(:category_id => @category.id)
  end

end
