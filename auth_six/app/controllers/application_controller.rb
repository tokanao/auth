class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user
    redirect_to '/users/login', danger: "ログインしていません。" if env['warden'].authenticated?(:user) == false
  end

  # ------------------------------------------------------------------------------

  # TODO
  def current_user
    env['warden'].user(:user)
  end

  helper_method :abilities, :can?

  protected 

    def abilities
      @abilities ||= Six.new
    end

    # simple delegate method for controller & view
    def can?(object, action, subject)
      abilities.allowed?(object, action, subject)
    end
end
