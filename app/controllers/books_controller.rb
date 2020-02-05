class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def import
    begin
      Book.import(params[:file])
    rescue
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end