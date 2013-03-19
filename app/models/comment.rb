class Comment < ActiveRecord::Base
  attr_accessible :post, :body

  validates :user, presence: true

  belongs_to :post
  belongs_to :post
end
