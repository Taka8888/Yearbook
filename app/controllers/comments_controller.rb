class CommentsController < ApplicationController

  def create
    @post = post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      respond_to do |format|
        format.js { render :index }
      end
    else
      respond_to do |format|
        format.js { render :form }
      end
    end
  end

  def edit
    @post = post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.js { render :edit, locals: { post: @post } }
    end
  end

  def update
    @post = post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      respond_to do |format|
        format.js { render :index }
      end
    else
      respond_to do |format|
        format.js { render :form }
      end
    end
  end

  def destroy
    @post = post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js { render :index }
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
