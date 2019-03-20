class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|

      t.string :title, null: false      # 題名
      t.string :content, null: false    # 内容
      t.date :time, null: false         # 配信時刻

      t.timestamps
    end
  end
end
