
# Rails 権限系 gem 調査

https://www.ruby-toolbox.com/categories/rails_authorization

---
## 1. banken work environment

$ be rails new auth_banken -d postgresql

cd banken
rbenv local 2.2.5
rbenv rehash
rbenv exec gem install bundler
rbenv rehash
rbenv exec which bundler

vi Gemfile
bundle install --path vendor/bundle

vi config/database.yml

```bash
bundle exec rails g scaffold user id:integer name:string login_id:string login_password:string created_at:datetime updated_at:datetime --skip-migration
bundle exec rails g scaffold customer id:integer personal_cd:string parent_customer_id:integer member_store_cd:string charge_cd:string customer_nm:string customer_kana:string customer_type:string is_manage_company:string president_nm:string post:string birth:date sex:string zip_cd:string addr1:string addr2:string addr3:string tel:string fax:string mobile_number:string email:string si_owner_f:string si_client_f:string bb_owner_f:string bb_agency_f:string note:text create_user_id:integer update_user_id:integer created_at:datetime updated_at:datetime --skip-migration
```

※ ほぼ全ての権限認証の gem において、current_user(devise 標準？) で現セッションのユーザーを暗黙的に取得している事がおおいので、application_controller.rb に以下を定義しておいた方がよい（warden の場合）

```ruby
def current_user
  env['warden'].user(:user)
end
```

### 2.worden
new:
```
vi app/views/users/login.html.slim
vi config/initializers/warden.rb
```

modified:
```
vi app/controllers/application_controller.rb
vi app/controllers/customers_controller.rb
vi app/controllers/users_controller.rb
vi app/models/user.rb
vi app/views/layouts/application.html.erb
vi config/routes.rb
```

#### 3.1. cancancan

#### 3.2. pundit

#### 3.3. banken
vi app/controllers/application_controller.rb
bundle exec rails g banken:install
bundle exec rails g banken:loyalty {対象モデル}

vi app/controllers/application_controller.rb
vi app/controllers/customers_controller.rb
vi app/views/layouts/application.html.erb


#### 3.4.

#### 3.5. the_role
