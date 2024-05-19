class BooksController < ApplicationController

  def new
    @books = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
end