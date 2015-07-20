class Author < ActiveRecord::Base
  has_many :blogs

  def to_s
    "#{self.author_name}"
  end
end
