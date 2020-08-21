FactoryBot.define do
  
  factory :user do
    nickname              {"sample"}
    email                 {"sample@gmail.com"}
    password              {"aaaaaa123"}
    password_confirmation {"aaaaaa123"}
    family_name           {"山田"}
    first_name            {"太郎"}
    family_name_kana      {"やまだ"}
    first_name_kana       {"たろう"}
  end

end