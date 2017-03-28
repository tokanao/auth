
# Rails 権限系 gem 調査

https://www.ruby-toolbox.com/categories/rails_authorization

※ 各プロジェクト配下のソースのポイントに "TODO" を埋め込んでいる
```
bundle exec rake notes|vi -
```

- アクセスルール：
>customers/new に対して、ログインアカウント名が "admin" 以外はアクセス制限をかけている

---
## 各種共通 Rails プロジェクト作成
```bash
rails new {proj_name} -d postgresql
cd {proj_name}
rbenv local 2.2.5
rbenv rehash
rbenv exec gem install bundler
rbenv rehash
rbenv exec gem which bundler
```

### DB作成と接続設定
```bash
psql postgres
postgres=# create database {db_name}  with owner="toka";
vi config/database.yml
```



## 1. banken work environment
```bash
vi Gemfile
bundle install --path vendor/bundle

vi config/database.yml
```

```bash
bundle exec rails g scaffold user id:integer name:string login_id:string login_password:string created_at:datetime updated_at:datetime --skip-migration
bundle exec rails g scaffold customer id:integer personal_cd:string parent_customer_id:integer member_store_cd:string charge_cd:string customer_nm:string customer_kana:string customer_type:string is_manage_company:string president_nm:string post:string birth:date sex:string zip_cd:string addr1:string addr2:string addr3:string tel:string fax:string mobile_number:string email:string si_owner_f:string si_client_f:string bb_owner_f:string bb_agency_f:string note:text create_user_id:integer update_user_id:integer created_at:datetime updated_at:datetime --skip-migration
```

※ ほぼ全ての権限認証の gem において、current_user(devise 標準？) で現セッションのユーザーを暗黙的に取得している事がおおいので、application_controller.rb に以下を定義しておいた方がよい（warden の場合）

```ruby
vi app/controller/application_controller.rb
def current_user
  env['warden'].user(:user)
end
```
