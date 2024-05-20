class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@books = @user.books.page(params[:page])
    @book = Book.new
    @books = @user.books
  end

  def edit
  end
end
