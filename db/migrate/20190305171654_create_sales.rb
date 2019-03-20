class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.datetime :date, null: false        #日付
      t.integer :visitor, null: false      #テーブル顧客数
      t.integer :menu_id, null: false      #商品番号
      t.integer :number, null: false       #個数

      t.timestamps
    end
  end
end
