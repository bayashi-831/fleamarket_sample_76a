class Destination < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :family_name
    validates :family_name_kana
    validates :first_name
    validates :first_name_kana
    validates :postalcode
    validates :prefecture
    validates :city
    validates :address
    validates :prefecture_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

end

  