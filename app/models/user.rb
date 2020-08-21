class User < ApplicationRecord
 user-registration-front
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
 user-registration-front
  has_one :destinations
  accepts_nested_attributes_for :destinations

  VALID_EMAIL_REGEX = /\A[\w+-.]+@[a-z\d-.]+.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :nickname, presence: true
  validates :password, presence: true, length: { minimum: 7}
  validates :family_name, presence: true,
  format: { with: /[^ -｡-ﾟ]+/}
  validates :first_name, presence: true,
  format: { with: /[^ -｡-ﾟ]+/}
  validates :family_name_kana, presence: true,
  format: { with: /[^ -｡-ﾟ]+/}
  validates :first_name_kana, presence: true,
  format: { with: /[^ -｡-ﾟ]+/}
  validates :birthday, presence: true
 
end
