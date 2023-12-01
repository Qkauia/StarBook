class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])
    comment = book.comments.new(comment_params)

    if comment.save
      redirect_to book_path(book), notice: '新增連言成功'
    else
      redirect_to book_path(book), alert: '留言發生錯誤'
    end
  end

  

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user: current_user)
  end
end
