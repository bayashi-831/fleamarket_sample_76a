class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true

  with_options presence: true do
    validates :family_name
    validates :family_name_kana
    validates :first_name
    validates :first_name_kana
    validates :birthday
  end
  
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :destinations
  accepts_nested_attributes_for :destinations

end
