class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_name
  has_many :comments
  validates :title, :presence => true
  validates :body, :presence => true

end
