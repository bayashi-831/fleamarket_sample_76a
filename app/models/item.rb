class Item < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many_attached :images
  belongs_to :genre
  has_many :reviews, dependent: :destroy
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, optional: true, class_name: "User"

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :pref, presence: true
  belongs_to_active_hash :condition, presence: true
  belongs_to_active_hash :delivery_fee, presence: true
  belongs_to_active_hash :day, presence: true

  def images_presence
    if images.attached?
      # inputに保持されているimagesがあるかを確認
      if images.length > 10
        errors.add(:image, '10枚まで投稿できます')
      end
    else
      errors.add(:image, '画像がありません')
    end
  end
end
