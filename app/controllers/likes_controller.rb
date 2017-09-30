class LikesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @like = Like.new(user_id: current_user.id, topic_id: params[:topic_id])
    respond_to do |format|
      if @like.save
        @topic.reload
        format.js
      else
        format.html { redirect_to topic_path(@topic) }
      end
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @like = Like.find_by(user_id: current_user.id, topic_id: params[:topic_id])
    respond_to do |format|
      if @like.destroy
        @topic.reload
        format.js
      else
        format.html { redirect_to topic_path(@topic) }
      end
    end
  end
end
