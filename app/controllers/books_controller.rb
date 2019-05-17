class BooksController < ApplicationController
	def index
		@books=Book.paginate(page: params[:page], per_page: 2)
	end

	def new
	#	@book=Book.new        
	end

	def create
		@book=Book.new(book_params)
		 @book.save
				#UserMailer.welcome_email(@user).deliver_now
	
		redirect_to @book
	end

	def show
		@book= Book.find(params[:id])
	end
   
   def edit
   	  @book= Book.find(params[:id])
   end

	def update
	  @book = Book.find(params[:id])
	  if @book.update(book_params)
	    redirect_to book_params
	  else
	    render 'edit'
	  end
	end

	 def destroy
	  @book = Book.find(params[:id])
	  @book.destroy
	 redirect_to books_path
	 end

	private
	def book_params
	   params.require(:book).permit(:name, :price ,:aurthor_id ,:category_id, :pages, :image)
	end
end
