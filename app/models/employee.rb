class Employee < ApplicationRecord
    has_many :orders
    enum type: { waiter: 0, cooker: 1, admin: 2}
end
