FactoryBot.define do
  factory :tweet do
    body { "MyString" }
    retweet { false }
    quotes { false }
    id_user { "MyString" }
  end
end
