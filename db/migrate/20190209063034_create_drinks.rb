class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|

      t.integer :category_id, null: false  #カテゴリID
      t.string :name, null: false          #飲物名
      t.integer :price, null: false        #値段
      t.string :image

      t.timestamps
    end
  end
end
