FactoryBot.define do
  factory :follower do
    user { nil }
    followers { "" }
    following { "" }
  end
end
