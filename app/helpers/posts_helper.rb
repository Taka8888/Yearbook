module PostsHelper
  def choose_new_or_edit
    if action_name == 'index' || action_name == 'create'
      posts_path
    elsif action_name == 'edit'
      postpost_path(params[:id])
    end
  end

  def button_name
    if  action_name == 'index'
      '投稿する'
    elsif action_name == 'edit'
      '更新'
    end
  end

  def html_escape_br(post)
    text_url_to_link(html_escape(post.content)).gsub(/\r\n|\r|\n/, "<br />").html_safe
  end

  def text_url_to_link(text)
    URI.extract(text, ['http', 'https']).uniq.each do |url|
      sub_text = ""
      sub_text << "<a href=" << url << " target=\"_blank\">" << url << "</a>"
      text.gsub!(url, sub_text)
    end
    return text
  end
end
