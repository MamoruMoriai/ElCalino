class CreateChiefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chiefs do |t|
      t.string :name, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
