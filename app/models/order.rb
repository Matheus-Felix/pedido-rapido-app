class Order < ApplicationRecord
  belongs_to :employee
  has_many :order_products

  enum status: { open: 0, preparing: 1, prepared: 2, paid: 3, canceled: 4}
end
