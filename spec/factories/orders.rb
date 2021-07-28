FactoryBot.define do
  factory :order do
    client_name { "MyString" }
    table { "MyString" }
    status { 1 }
    employee { nil }
  end
end
