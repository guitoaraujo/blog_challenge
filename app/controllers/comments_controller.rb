class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  after_action :redirect_to_post

  def create
    Comment.create(name: params[:name], body: params[:body], post_id: params[:post_id])
  end

  private

    def redirect_to_post
      redirect_to post_path(@post)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
