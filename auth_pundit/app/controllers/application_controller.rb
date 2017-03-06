class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user
    redirect_to '/users/login', danger: "ログインしていません。" if env['warden'].authenticated?(:user) == false
  end

  # TODO
  include Pundit
  def pundit_user
    # called authorize model
    user = env['warden'].user(:user)
  end

  # TODO 
  rescue_from Pundit::NotAuthorizedError do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      # format.html { redirect_to main_app.root_url, notice: exception.message }
      format.html { redirect_to main_app.root_url, notice: '権限がありません' }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

end
