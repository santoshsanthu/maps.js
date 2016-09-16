class BooksController < ApplicationController

    def index
      @books = Book.all
    end

    def new
      @book = Book.new
    end

    def create
    @book = Book.new(books_params)
   if @book.save
     flash[:msg]="successfully created"
   end
    else
    redirect_to @book
    end

    def edit
      @book = Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      if @book.update_attributes(books_params)
        flash[:msg] = "updated successfully"
      end
      redirect_to @book

    end

    def show
      @book = Book.find(params[:id])
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to @book
    end
end
  private
  def books_params
    params.require(:book).permit(:name,:publisher,:no_of_books,:phone,:email)
  end
