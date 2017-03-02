class User < ActiveRecord::Base
  include TheRole::Api::User

  def self.authenticate(login_id, login_password)
    return nil if login_id.blank? || login_password.blank?
    my = find_by(login_id: login_id)
    my && my.authenticated?(login_password) ? my : nil
  end
  def authenticated?(login_password)
    true
    # # 現在のパスワードを取得
    # compare_login_password = self.login_password
    # # パスワード認証実行
    # User.compare(compare_login_password, login_password)
  end

  def self.timeout?(last_request_at)
    false
    # diff_time = Time.now.to_i - last_request_at.to_i
    # 3600 < diff_time ? true : false
  end
end
