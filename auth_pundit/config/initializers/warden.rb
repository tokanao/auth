Rails.configuration.middleware.use RailsWarden::Manager do |manager|
  manager.default_strategies :as_users
  manager.failure_app = UsersController
end


# Setup Session Serialization
class Warden::SessionSerializer
  def serialize(record)
    #[record.class.name, record.id]
    record.id
  end
  def deserialize(keys)
    User.find_by(id: keys)
  end
end

Warden::Manager.after_set_user do |record, warden, options|
  scope = options[:scope]
  env   = warden.request.env

  # データの存在チェック & 認証チェック
  if record && warden.authenticated?(scope)
    # 最終アクセス時間を取得
    last_request_at = warden.session(scope)['last_request_at']

    if last_request_at.is_a? Integer
      last_request_at = Time.at(last_request_at)
    end

    # タイムアウトの時間か確認
    # 初回ログインの際にはタイムアウトにならないようにする
    if !last_request_at.blank? && User.timeout?(last_request_at)
      warden.logout(scope)
      warden.clear_strategies_cache!(scope: scope)
      throw(:warden, type: 'error', event: 'timeout', message: '一定時間が経過したため、再度ログインが必要です')
    end

    # 最終アクセス時間をセット
    warden.session(scope)['last_request_at'] = Time.now.to_i
  end
end

# ログイン認証
Warden::Strategies.add(:as_users) do
  # パラメータチェック
  def valid?
    params[:user].has_key?(:login_id) && params[:user].has_key?(:login_password)
  end

  # 認証処理
  def authenticate!
    u = User.authenticate(params[:user][:login_id], params[:user][:login_password])
    u.nil? ? throw(:warden, type: 'error', event: 'initial_authenticate', message: 'ログインIDまたはパスワードに誤りがあります') : success!(u)
  end
end
