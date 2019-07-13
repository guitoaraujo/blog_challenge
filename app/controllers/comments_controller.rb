class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    comment = Comment.create(name: params[:name], body: params[:body], post_id: params[:post_id])
    redirect_to post_path(comment.post)
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
