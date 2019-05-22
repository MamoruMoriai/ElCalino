class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category, optional: true
  belongs_to :genre, optional: true
  has_many :takes, foreign_key: "menu_id"

  #バリデーション
  validates :name, presence: true
  validates :price, presence: true 

end
