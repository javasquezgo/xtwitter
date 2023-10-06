FactoryBot.define do
  factory :reply do
    user_id { rand(1..39) }
    tweet_id { rand(10..40) }
    reply_text { Faker::Lorem.sentences.join(' ') }
  end
end
