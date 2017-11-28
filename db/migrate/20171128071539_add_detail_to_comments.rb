class AddDetailToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :topic_id, :integer
    add_column :comments, :content, :text
  end
end
