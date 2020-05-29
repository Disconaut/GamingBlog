class Post < ApplicationRecord
  mount_uploader :thumb_img, ImageUploader
  mount_uploader :header_img, ImageUploader

  has_many :comments, as: :commentable
end
