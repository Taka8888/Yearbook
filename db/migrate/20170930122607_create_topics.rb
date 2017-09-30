class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :user_id
      t.text :content
      t.string :avatar

      t.timestamps null: false
    end
  end
end
