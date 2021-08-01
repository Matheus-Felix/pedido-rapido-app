class Employee < ApplicationRecord
  has_many :orders
  enum worker: { waiter: 0, cooker: 1, admin: 2 }
end
