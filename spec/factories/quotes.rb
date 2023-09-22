FactoryBot.define do
  factory :quote do
    user { nil }
    tweet { nil }
    content { "MyText" }
  end
end
