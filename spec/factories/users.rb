FactoryBot.define do
  factory :user do
    user_name { Faker::Internet.username(specifier: 10)  }
    full_name { Faker::Name.name_with_middle }
    password {'123abcDEF+-*0'}
    #password { Faker::Internet.password(min_length: 12, max_length: 20, mix_case: true, special_characters: true) }
    user_email {Faker::Internet.email}
  end
end
