FactoryBot.define do
  factory :retweet do
    user_id { rand(1..39) }
    tweet_id { rand(10..40) }
    reply_text { Faker::Lorem.sentence(word_count: rand(5..15)) }
  end
end
