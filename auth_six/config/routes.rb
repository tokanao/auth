Rails.application.routes.draw do
  resources :customers

  # resources :users
  scope :users do
    get 'login', :to => 'users#login', :as => 'users_login'
    post 'auth', :to => 'users#auth', :as => 'users_auth'
    delete 'destroy', :to => 'users#destroy', :as => 'users_destroy'
  end
  root 'customers#index'
end
