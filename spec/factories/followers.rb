#TODO: add more data before doing test with table followes

FactoryBot.define do
  factory :follower do
    user { 26 }
    followers { "" }
    following { "" }
  end
end
