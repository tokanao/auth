class Customer < ActiveRecord::Base
  # creatable_by?(user)などのメソッドが利用できるようになる。
  include Authority::Abilities

  self.authorizer_name = 'CustomerAuthorizer'
end
