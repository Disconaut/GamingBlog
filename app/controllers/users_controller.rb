class UsersController < ApplicationController

  def update_avatar
    @user = User.find_by(params[:id])
    @user.update(params.require(:user).permit(:avatar))
    redirect_back fallback_location: root_path
  end


end
