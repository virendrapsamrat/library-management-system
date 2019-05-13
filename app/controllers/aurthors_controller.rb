class AurthorsController < ApplicationController
	def index
		@aurthors = Aurthor.all
	end

	def new
		@aurthor=Aurthor.new
	end

	def create
		@aurthor=Aurthor.new(aurthor_params)
		@aurthor.save
		redirect_to @aurthor
	end

	def show
		@aurthor=Aurthor.find(params[:id])
	end

   def edit
   	  @aurthor= Aurthor.find(params[:id])
   end

	def update
	    @aurthor = Aurthor.find(params[:id])
	  if @aurthor.update(aurthor_params)
	    redirect_to aurthors_path
	  else
	    render 'edit'
	  end
	end

	 def destroy
	  @aurthor = Aurthor.find(params[:id])
	  @aurthor.destroy
	  redirect_to aurthors_path
	 end

	private
	def aurthor_params
		 params.require(:aurthor).permit(:name, :age)
	end

end
