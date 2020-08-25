class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :nickname, presence: true
  validates :password, presence: true, length: { minimum: 7}
  validates :family_name, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :first_name, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :family_name_kana, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :first_name_kana, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :birthday, presence: true
  validates :destination_family_name, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :destination_first_name, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :destination_family_name_kana, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :destination_first_name_kana, presence: true,
  format: { with: /[^-｡-ﾟ]+/}
  validates :postal_code, presence: true
  validates :prefecture_id, presence: true
  validates :city, presence: true
  validates :house_number, presence: true
 
end
