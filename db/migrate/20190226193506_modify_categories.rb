class ModifyCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :genre_id
  end
end
