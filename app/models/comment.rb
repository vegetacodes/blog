class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id
  belongs_to :post
  validates :post_id, :presence => true
  validates :body, :presence => true

end
