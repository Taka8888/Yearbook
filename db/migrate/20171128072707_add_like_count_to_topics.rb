class AddLikeCountToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :like_count, :integer
  end
end
