class ModifyTakes < ActiveRecord::Migration[5.2]
  def change
    add_reference :takes, :menu, foreign_key: { to_table: :foods }
  end
end
