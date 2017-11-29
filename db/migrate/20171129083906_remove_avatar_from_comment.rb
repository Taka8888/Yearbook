class RemoveAvatarFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :avatar, :string
  end
end
