require 'elasticsearch/model'
class Blog < ActiveRecord::Base


  def self.search_with_elasticsearch(*args)
    __elasticsearch__.search(*args)
  end

  belongs_to :category
	belongs_to :author
  def to_s
    "#{name}"
  end
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
