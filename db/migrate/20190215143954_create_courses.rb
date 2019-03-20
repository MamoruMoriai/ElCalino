class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, null: false    #コース名
      t.integer :price, null: false  #値段
      t.string :image, null: false   #写真

      t.timestamps
    end
  end
end
