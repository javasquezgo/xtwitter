FactoryBot.define do
  factory :like do
    user_id { rand(1..39) }
    tweet_id { rand(15..40) }
  end
end
