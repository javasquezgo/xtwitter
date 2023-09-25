FactoryBot.define do
  factory :user do
    user_name { 'javasquez' }
    full_name { "Alejandro Vasquez" }
    password { "1234567890aA+" }
    user_email {"jvasquez@gmail"}
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