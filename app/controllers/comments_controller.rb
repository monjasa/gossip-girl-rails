class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:edit, :update, :show, :destroy]
  before_action :set_gossip, only: [:create, :edit, :update, :show, :destroy]

  def new
  end

  def edit
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.find(params[:id])
  end

  def create
    @comment = @gossip.comments.create(params[:comment].permit(:message, :gossip_id))
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to gossip_path(@gossip), notice: 'Comment was successfully created.' }
        format.js
      else
        format.html { redirect_to gossip_path(@gossip), notice: 'Comment was not added. Please try again.' }
        format.js
      end
    end
  end

  def update
    @comment = @gossip.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to gossip_path(@gossip), notice: 'Comment was successfully updated.' }
      else
        format.html { redirect_to gossip_path(@gossip), notice: 'Comment was not updated. Please try again.' }
        format.json { render json: comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@gossip)
  end

  private

    def set_gossip
      @gossip = Gossip.find(params[:gossip_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:message)
    end
end