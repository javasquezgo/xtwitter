FactoryBot.define do
  factory :retweet do
    user_id { rand(1..17) }
    tweet_id { rand(15..29) }
    reply_text { Faker::Lorem.sentence(word_count: rand(5..15)) }
  end
end
