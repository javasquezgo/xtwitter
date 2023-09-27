FactoryBot.define do
  factory :follower do
    user_id { rand(1..39) }
    followers { rand(1..5) }
    following { rand(1..5) }
  end
end
