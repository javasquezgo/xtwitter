FactoryBot.define do
  factory :bookmark do
    user_id { rand(1..35) }
    tweet_id { rand(10..25)}
  end
end
