class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic, counter_cache: :like_count

  def self.info(user_id, topic_id)
    self.find_by(user_id: user_id, topic_id: topic_id)
  end
end
