class UserAuthorizer < ApplicationAuthorizer
  def self.creatable_by?(user)
    user.name == "toka"
  end
end
