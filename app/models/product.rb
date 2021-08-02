class Product < ApplicationRecord
  belongs_to :category
#  has_many :order_products
  has_many :product_order
end
