class AddDetailToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :conversation_id, :integer
    add_column :messages, :user_id, :integer
    add_column :messages, :body, :string
    add_column :messages, :read, :boolean
  end
end
