class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :category_id, null: false  #カテゴリID
      t.string :name, null: false          #料理名
      t.integer :price, null: false        #値段
      t.string :image          #写真

      t.timestamps
    end
  end
end
