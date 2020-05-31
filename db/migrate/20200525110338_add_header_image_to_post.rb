class AddHeaderImageToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :header_img, :json
    rename_column :posts, :image, :thumb_img
  end
end
