class ImageController < ApplicationController
  skip_before_action :verify_authenticity_token
  def upload
    uploader = ImageUploader.new
    uploader.store!(params['file'])

    render json: {location: uploader.url}
  end

  def delete
  end
end
