FactoryBot.define do
  factory :user do
    user_name { Faker::Internet.username(specifier: 10)  }
    full_name { Faker::Name.name_with_middle }
    password { Faker::Internet.password(min_length: 12, max_length: 20, mix_case: true, special_characters: true) }
    user_email {Faker::Internet.email}
  end
end

=begin
  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "full_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_email"
  end
=end