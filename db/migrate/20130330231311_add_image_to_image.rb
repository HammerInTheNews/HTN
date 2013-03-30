class AddImageToImage < ActiveRecord::Migration
  def change
    add_column :images, :image, :filetype
  end
end
