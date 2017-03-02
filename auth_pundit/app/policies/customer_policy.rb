class CustomerPolicy < ApplicationPolicy
  def create?
    user.name == "toka"
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
