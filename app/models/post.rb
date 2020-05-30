class Post < ApplicationRecord
  mount_uploader :thumb_img, ImageUploader
  mount_uploader :header_img, ImageUploader
  enum category: {news: 'news', review: 'review', other: 'other'}
  validates :category, inclusion: { in: categories.keys }

  has_many :comments, as: :commentable
end
