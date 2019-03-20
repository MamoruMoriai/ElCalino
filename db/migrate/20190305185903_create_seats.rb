class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :name, null: false    #座席名
      t.integer :max, null: false    #許容人数

      t.timestamps
    end
  end
end
