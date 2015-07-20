class Blog < ActiveRecord::Base
	belongs_to :category
	belongs_to :author
  def to_s
    "#{name}"
  end
end
