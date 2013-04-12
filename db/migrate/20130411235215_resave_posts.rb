class ResavePosts < ActiveRecord::Migration
  def change
  	Post.all.each do |t|
  		t.save
  	end
  end
end
