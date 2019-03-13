FactoryBot.define do
  factory :cost do
    price { "9.99" }
    delivery_id { 1 }
    user_id { 1 }
    comment { "MyText" }
    date { "2019-03-13" }
  end
end
