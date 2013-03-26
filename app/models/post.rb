class Post < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list, :photo
  acts_as_taggable
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  belongs_to :user
  has_attached_file :photo
end
