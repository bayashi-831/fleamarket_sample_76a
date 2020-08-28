class Item < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :genre
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

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
