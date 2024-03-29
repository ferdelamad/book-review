class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @books = Book.all
  end

  private
    def book_params
      params.require(:book).permit(:title, :derscription, :author)
    end
end
