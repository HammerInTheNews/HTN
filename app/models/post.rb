class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  after_create :send_email
  attr_accessible :body, :title, :tag_list, :image
  acts_as_taggable
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  has_many :images
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "80x80>", :large => "600x600>" }, :default_url => "/images/:style/missing.png"                                  

  def send_email
    Fan.all.each do |fan|
      HtnMailer.htn_newsletter(fan, self).deliver
    end
  end

end
