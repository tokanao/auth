Rails.application.routes.draw do
  resources :customers
  resources :contracts

  # resources :users
  scope :users do
    # ログイン画面
    get 'login', :to => 'users#login', :as => 'users_login'
    # ログイン認証
    post 'auth', :to => 'users#auth', :as => 'users_auth'
    # ログアウト
    delete 'destroy', :to => 'users#destroy', :as => 'users_destroy'
  end

  root 'customers#index'
end
