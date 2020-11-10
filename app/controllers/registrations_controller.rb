class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_resource)
    root_path
  end

  private

  def sign_out_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
