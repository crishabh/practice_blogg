class Category < ActiveRecord::Base
  has_many  :blogs
  def to_s
    "#{self.category_name}"
  end
end
