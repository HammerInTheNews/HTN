class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  belongs_to :user
end
