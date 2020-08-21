class Destination < ApplicationRecord

  belongs_to :user

  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/}
end
