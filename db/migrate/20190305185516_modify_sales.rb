class ModifySales < ActiveRecord::Migration[5.2]
  def change
    remove_column :sales, :menu_id
    remove_column :sales, :number
    add_column :sales, :seat_id, :integer
  end
end
