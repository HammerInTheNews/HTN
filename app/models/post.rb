class Post < ActiveRecord::Base

  attr_accessible :body, :title, :tag_list, :image
  acts_as_taggable
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  has_many :images
  belongs_to :user
  has_attached_file :image, styles: { thumb: '70x60#', small: '150x150>', large: '680x340', ugly: '666x666!' },
                     size: { :in => 0..1000.kilobytes }
                                        
end
