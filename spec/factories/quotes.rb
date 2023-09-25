FactoryBot.define do
  factory :quote do
    user { 26 }
    tweet { 1 }
    content { "This is a quote" }
  end
end
