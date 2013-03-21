class Post < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  belongs_to :user
end
