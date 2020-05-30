class User < ApplicationRecord
  attr_writer :login

  def login
    @login || self.username || self.email
  end

  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
