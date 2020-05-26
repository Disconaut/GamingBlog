class ApplicationController < ActionController::Base
  def authenticate_admin!
    authenticate_user!
    redirect_to root_path unless current_user.owner?
  end
end
