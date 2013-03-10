class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: {message: ' are usually added by writers.' }
  validates :body, presence: {message: 'is missing and you\'re the main suspect' }

  has_many :comments
end
