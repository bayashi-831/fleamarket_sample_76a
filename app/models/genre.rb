class Genre < ApplicationRecord
  has_many :items
  # has_ancestry
end
