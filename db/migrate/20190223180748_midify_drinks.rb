class MidifyDrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :genre_id, :integer
  end
end
