# TODO
class CustomerPolicy < ApplicationPolicy
  def create?
    user.name == "admin"
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
