class Order < ApplicationRecord
  belongs_to :employee
  has_many :order_products
end
