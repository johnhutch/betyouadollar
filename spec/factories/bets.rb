FactoryBot.define do
  factory :bet do
    expiration { "2024-10-04 18:41:38" }
    description { "MyString" }
    owner { nil }
    better { nil }
    settled { false }
  end
end
