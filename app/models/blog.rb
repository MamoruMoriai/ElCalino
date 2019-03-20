class Blog < ApplicationRecord
  #バリデーション
  validates :title, presence: true
  validates :content, presence: true
  validates :time, presence: true
end
