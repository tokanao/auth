class CustomersLoyalty < ApplicationLoyalty
  def create?
    user.name == "admin"
  end
end
