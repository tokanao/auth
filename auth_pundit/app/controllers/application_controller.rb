class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  def pundit_user
    # called authorize model
    user = env['warden'].user(:user)
  end

  def authenticate_user
    redirect_to '/users/login', danger: "ログインしていません。" if env['warden'].authenticated?(:user) == false
  end
end
