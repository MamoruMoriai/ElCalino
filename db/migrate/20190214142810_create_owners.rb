class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :uid, null: false
      t.string :pwd, null: false

      t.timestamps
    end
  end
end
