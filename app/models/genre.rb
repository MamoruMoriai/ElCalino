class Genre < ApplicationRecord
  has_many :foods
  has_many :drinks
  belongs_to :category, optional: true
end
