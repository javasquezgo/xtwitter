FactoryBot.define do
  factory :quote do
    user_id { rand(1..39) }
    tweet_id { rand(10..40) }
    content { Faker::Lorem.sentences.join(' ') }
  end
end
