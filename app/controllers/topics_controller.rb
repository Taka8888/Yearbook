class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :show, :destroy]
  before_action :set_all_topics, only: [:index, :create, :show]
  before_action :authenticate_user!

  def index
    @topic = Topic.new
    @maybe_friend = current_user.random_friend
  end

  def create
    @topic = Topic.new(topics_params)
    @topic.user_id = current_user.id
    if @topic.save
      redirect_to topics_path
      flash[:success] = '投稿しました'
    else
      respond_to do |format|
        format.js { render :create_error }
      end
    end
  end

  def edit
    respond_to do |format|
      format.js { render :edit, locals: { topic: @topic } }
    end
  end

  def show
  end

  def update
    @topic.content = params[:topic][:content]
    @topic.avatar = params[:topic][:avatar]
    if @topic.save
      redirect_to topics_path
      flash[:success] = '更新しました'
    else
      respond_to do |format|
        format.js { render :edit_error }
      end
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path
    flash[:success] = '削除しました'
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :content, :avatar)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end

    def set_all_topics
      @topics = Topic.page(params[:page]).order(id: :desc)
    end

end
