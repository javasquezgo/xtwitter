FactoryBot.define do
  factory :bookmark do
    user_id { random(1..35) }
    tweet_id { random(10..25)}
  end
end
