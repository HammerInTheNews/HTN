class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: true
  validates :body, presence: true

  has_many :comments
end
