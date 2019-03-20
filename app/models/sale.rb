class Sale < ApplicationRecord
  has_many :takes
  belongs_to :seat, optional: true


  #scope
  scope :join_take, -> {
    joins(:takes)
  }

  scope :join_more, -> {
    joins("INNER JOIN takes ON sales.id = takes.sale_id JOIN foods ON takes.menu_id = foods.id")
  }


end
