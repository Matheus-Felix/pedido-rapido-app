class Order < ApplicationRecord
  belongs_to :employee
  has_many :product_order
end
