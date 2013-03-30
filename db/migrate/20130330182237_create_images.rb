class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :post_id
      t.filetype :image
      t.timestamps
    end
  end
end
