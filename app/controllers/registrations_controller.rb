class RegistrationsController < Devise::RegistrationsController
  skip_before_filter :require_no_authentication
  before_filter :resource_name

  def resource_name
    :user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_back fallback_location: root_path
    else
      render :'devise/sessions/new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
