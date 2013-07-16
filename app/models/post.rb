class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  #to use delayed job, put :queue_send_email after 'after_create'
  #after_create :send_email
  attr_accessible :body, :title, :tag_list, :image
  acts_as_taggable
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true

  has_many :comments
  has_many :images
  belongs_to :user
  has_attached_file :image, 
    :styles => { :medium => "160x160>", :thumb => "180x180>", :large => "660x660>" }, 
    :default_url => "/images/:style/missing.png",
    :storage => :s3, s3_credentials: {access_key_id: "AKIAJQFILE7GM3P4IOUA",
    secret_access_key: "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",
    bucket: "hammerinthenews"}


  # def queue_send_email
  #   delay.send_email
  # end

  # def send_email
  #   Fan.all.each do |fan|
  #     HtnMailer.htn_newsletter(fan, self).deliver
  #   end
  # end

  

end
