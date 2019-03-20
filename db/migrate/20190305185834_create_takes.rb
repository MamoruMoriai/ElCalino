class CreateTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :takes do |t|
      t.integer :sale_id, null: false   #伝票番号
      t.integer :menu_id, null: false   #商品番号
      t.integer :number, null: false    #個数

      t.timestamps
    end
  end
end
