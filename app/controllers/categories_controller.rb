class CategoriesController < ApplicationController

	def index 
		@categories= Category.all
	end

	def show
		@category = Category.find(params[:id])
	end
	
	def new
	end


	def edit
        @category = Category.find(params[:id])
    end

	def create
		@category = Category.new(category_params) 
     #@category.user_id = current_user.id
        @category.save
        redirect_to @category
	end  

  def update
    @category = Category.find(params[:id])
   
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end


  def destroy
  	    @category = Category.find(params[:id])
  	    @category.destroy
  	    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
