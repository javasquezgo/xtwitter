FactoryBot.define do
  factory :tweet do
    id_tweet { "MyString" }
    content { "MyString" }
    retweet { false }
    quote { false }
    reply { false }
  end
end
