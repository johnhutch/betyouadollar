FactoryBot.define do
  factory :profile do
    user { nil }
    name { "MyString" }
    venmo { "MyString" }
    paypal { "MyString" }
    cashapp { "MyString" }
    favorite_team { "MyString" }
  end
end
