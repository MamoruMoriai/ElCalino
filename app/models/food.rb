class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category, optional: true
  belongs_to :genre, optional: true
  has_many :takes, foreign_key: "menu_id"

  #バリデーション
  validates :name, presence: true
  validates :price, presence: true 

  #スコープ

  #伝票別売上
  scope :sale_price, -> {
    find_by_sql(['select date, seats.name, visitor, sum(price * number) as sum_price from foods join takes on foods.id = takes.menu_id join sales on takes.sale_id = sales.id join seats on sales.seat_id = seats.id group by sales.id;'])
  }

  #日別売上
  scope :days_price, -> {
    find_by_sql(['select date, seats.name, visitor, sum(price * number) as sum_price from foods join takes on foods.id = takes.menu_id join sales on takes.sale_id = sales.id join seats on sales.seat_id = seats.id group by sales.id;'])
  } 

  #テーブル別売上
  scope :table_price, -> {
    find_by_sql(['select date, seats.name, visitor, sum(price * number) as sum_price from foods join takes on foods.id = takes.menu_id join sales on takes.sale_id = sales.id join seats on sales.seat_id = seats.id group by seats.id;'])
  }

end
