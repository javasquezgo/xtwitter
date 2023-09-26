FactoryBot.define do
  factory :tweet do
    content { Faker::Hacker.say_something_smart }
    user_id {rand(1..39)}
  end
end
