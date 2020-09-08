FactoryBot.define do

  factory :item do
    name              {"Tシャツ"}
    introduction      {"レディースのカットソー(半袖/袖なし)です"}
    genre_id          {"33"}
    brand             {"シャネル"}
    condition_id      {"1"}
    delivery_fee_id   {"1"}
    pref_id           {"1"}
    day_id            {"1"}
    price             {"1000"}
    seller_id         {"1"}

  end

end