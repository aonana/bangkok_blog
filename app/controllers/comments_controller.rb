class CommentsController < ApplicationController
  def create
 @comment = Comment.create(text: comment_params[:text], blog_id: comment_params[:blog_id], user_id: current_user.id)
    redirect_to "/blogs/#{@comment.blog.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end
  private
  def comment_params
    params.permit(:text, :blog_id)
  end
end

