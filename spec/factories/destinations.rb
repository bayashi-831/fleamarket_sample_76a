FactoryBot.define do
  
  factory :destination do
    family_name           {"山田"}
    first_name            {"太郎"}
    family_name_kana      {"やまだ"}
    first_name_kana       {"たろう"}
    postal_code           {"000-0000"}
    prefecture_id         {1}
    city                  {"練馬区"}
    house_number          {"東大泉1-1-1"}
    
  end
end