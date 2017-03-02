class ApplicationController < ActionController::Base
  include TheRole::Controller

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to '/users/login', danger: "ログインしていません。" if env['warden'].authenticated?(:user) == false
    # current_user = env['warden'].user(:user)
  end

  # the_role が参照する
  def current_user
    env['warden'].user(:user)
  end
end
