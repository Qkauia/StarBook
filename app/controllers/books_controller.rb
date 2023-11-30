class BooksController < ApplicationController
  before_action :find_book, only: [ :show , :edit , :update, :destroy ]
  def index
    @books = Book.order(id: :desc)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: '新增成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to root_path(@book), notice: '編輯成功'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path, alert: '刪除成功'
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :description, :price, :onsale)
  end
end
