FactoryBot.define do
  factory :retweet do
    user { 26 }
    tweet { 1 }
    reply_text { "I'm retweeting" }
  end
end
