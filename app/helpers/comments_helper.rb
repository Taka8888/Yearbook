module CommentsHelper
  def comment_choose_new_or_edit(topic, comment)
    if action_name == 'index' || action_name == 'create' || action_name == 'show'
      topic_comments_path(topic)
    elsif action_name == 'edit'
      topic_comment_path(topic, comment)
    end
  end
end
