module CommentsHelper
  def comment_choose_new_or_edit(post, comment)
    if action_name == 'index' || action_name == 'create' || action_name == 'show'
      post_comments_path(post)
    elsif action_name == 'edit'
      post_comment_path(post, comment)
    end
  end
end
