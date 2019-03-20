class Take < ApplicationRecord
  belongs_to :sale, optional: true
  belongs_to :food, optional: true
  belongs_to :drink, optional: true


  scope :join_menu, -> {
    joins(:food)
  }

end
