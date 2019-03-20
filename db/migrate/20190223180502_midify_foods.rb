class MidifyFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :genre_id, :integer
  end
end
