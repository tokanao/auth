class ApplicationController < ActionController::Base
  include Banken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user
    redirect_to '/users/login', danger: "ログインしていません。" if env['warden'].authenticated?(:user) == false
  end

  # ------------------------------------------------------------------------------

  def banken_user
    # called authorize model
    user = env['warden'].user(:user)
  end

rescue_from Banken::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
