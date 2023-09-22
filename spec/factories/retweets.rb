FactoryBot.define do
  factory :retweet do
    user { nil }
    tweet { nil }
    reply_text { "MyString" }
  end
end
