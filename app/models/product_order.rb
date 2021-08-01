class ProductOrder < ApplicationRecord
  belongs_to :product
  belongs_to :order

  enum status: { open: 0, preparing: 1, done: 2, canceled: 3 }

  scope :per_status, ->(status) { where(status: status) }
end
