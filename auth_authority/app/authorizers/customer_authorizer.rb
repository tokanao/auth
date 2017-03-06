# TODO
class CustomerAuthorizer < ApplicationAuthorizer
  def self.creatable_by?(user)
    user.name == "admin"
  end
end
