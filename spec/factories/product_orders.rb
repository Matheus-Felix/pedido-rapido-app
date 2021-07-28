FactoryBot.define do
  factory :product_order do
    quantity { 1 }
    aditional_info { "MyText" }
    product { nil }
    order { nil }
  end
end
