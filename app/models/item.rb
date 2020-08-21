class Item < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :brand
  belongs_to :genre
  has_many :reviews, dependent: :destroy

end
