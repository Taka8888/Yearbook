class AddDetailToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :user_id, :integer
    add_column :notifications, :comment_id, :integer
    add_column :notifications, :read, :boolean
  end
end
