class Post < ApplicationRecord
  mount_uploader :thumb_img, ImageUploader
  mount_uploader :header_img, ImageUploader
  enum category: {news: 'news', reviews: 'reviews', others: 'others'}
  validates :category, inclusion: { in: categories.keys }

  validates :title ,length: { minimum: 3, maximum: 255 }
  validates :thumb_img, presence: true

  has_many :comments, as: :commentable
end
