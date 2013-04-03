class Image < ActiveRecord::Base
  attr_accessible :post_id, :image
  has_attached_file :image, :styles => { :large => "600x400", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  belongs_to :post
end
