class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false   #カテゴリ名

      t.timestamps
    end
  end
end
