class Customer < ActiveRecord::Base
  def self.allowed(author, customer)

    rules = []

    # abilities << Customer からの場合は、未処理
    return rules if author.nil?

    rules << :read_customer
    if author.name == "toka"
      rules << :edit_customer
      rules << :customer
    end
    rules
  end
end
